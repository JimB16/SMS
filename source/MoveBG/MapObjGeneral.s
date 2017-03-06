
.globl __ct__14TMapObjGeneralFPCc
__ct__14TMapObjGeneralFPCc: # 0x801b2f94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    lfs     f0, -0x2cc0(rtoc)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__14TMapObjGeneralFv
loadAfter__14TMapObjGeneralFv: # 0x801b2ff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 7, 7
    beq-    branch_0x801b3048
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r31, 0x10
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b3048
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
branch_0x801b3048:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__14TMapObjGeneralFP9THitActorUl
receiveMessage__14TMapObjGeneralFP9THitActorUl: # 0x801b305c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
    cmpwi   r3, 0x0
    beq-    branch_0x801b3094
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b3094:
    cmplwi  r31, 0x4
    bne-    branch_0x801b3184
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x801b3184
    lwz     r3, 0xac(r29)
    lwz     r0, 0xb0(r29)
    lfs     f0, -0x2cbc(rtoc)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0xb4(r29)
    stw     r0, 0x40(sp)
    lfs     f2, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f3, 0x40(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801b3184
    lhz     r3, 0xfc(r29)
    cmplwi  r3, 0x2
    bne-    branch_0x801b3104
    li      r0, 0x1
    b       branch_0x801b3108

branch_0x801b3104:
    li      r0, 0x0
branch_0x801b3108:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b3164
    cmplwi  r3, 0x1
    bne-    branch_0x801b3120
    li      r0, 0x1
    b       branch_0x801b3124

branch_0x801b3120:
    li      r0, 0x0
branch_0x801b3124:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b3164
    cmplwi  r3, 0x4
    bne-    branch_0x801b313c
    li      r0, 0x1
    b       branch_0x801b3140

branch_0x801b313c:
    li      r0, 0x0
branch_0x801b3140:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b3164
    cmplwi  r3, 0x5
    bne-    branch_0x801b3158
    li      r0, 0x1
    b       branch_0x801b315c

branch_0x801b3158:
    li      r0, 0x0
branch_0x801b315c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3184
branch_0x801b3164:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b3184:
    cmplwi  r31, 0x4
    bne-    branch_0x801b320c
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x25
    bne-    branch_0x801b31a4
    li      r0, 0x1
    b       branch_0x801b31a8

branch_0x801b31a4:
    li      r0, 0x0
branch_0x801b31a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b320c
    lhz     r3, 0xfc(r29)
    cmplwi  r3, 0x2
    bne-    branch_0x801b31c4
    li      r0, 0x1
    b       branch_0x801b31c8

branch_0x801b31c4:
    li      r0, 0x0
branch_0x801b31c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b31ec
    cmplwi  r3, 0x1
    bne-    branch_0x801b31e0
    li      r0, 0x1
    b       branch_0x801b31e4

branch_0x801b31e0:
    li      r0, 0x0
branch_0x801b31e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b320c
branch_0x801b31ec:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b320c:
    cmplwi  r31, 0x6
    bne-    branch_0x801b3250
    lhz     r0, 0xfc(r29)
    cmplwi  r0, 0x6
    bne-    branch_0x801b3228
    li      r0, 0x1
    b       branch_0x801b322c

branch_0x801b3228:
    li      r0, 0x0
branch_0x801b322c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3250
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b3250:
    cmplwi  r31, 0x7
    bne-    branch_0x801b32a4
    lhz     r0, 0xfc(r29)
    cmplwi  r0, 0x6
    bne-    branch_0x801b326c
    li      r0, 0x1
    b       branch_0x801b3270

branch_0x801b326c:
    li      r0, 0x0
branch_0x801b3270:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b32a4
    lwz     r3, 0x130(r29)
    lwz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b32a4
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b32a4:
    cmplwi  r31, 0x1
    bne-    branch_0x801b32d4
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x801b32d4
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b32d4:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801b32ec
    li      r0, 0x1
    b       branch_0x801b32f0

branch_0x801b32ec:
    li      r0, 0x0
branch_0x801b32f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b331c
    cmplwi  r31, 0x1
    bgt-    branch_0x801b331c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b3348

branch_0x801b331c:
    cmplwi  r31, 0xb
    bne-    branch_0x801b3344
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x801b3344
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801b3344:
    li      r3, 0x0
branch_0x801b3348:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics: # 0x801b3364
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x801b33cc
    lhz     r0, 0xfc(r28)
    cmplwi  r0, 0xa
    bne-    branch_0x801b33a8
    li      r0, 0x1
    b       branch_0x801b33ac

branch_0x801b33a8:
    li      r0, 0x0
branch_0x801b33ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b342c
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x801b342c

branch_0x801b33cc:
    lwz     r0, 0xf8(r28)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x801b342c
    lwz     r0, 0x104(r28)
    cmpwi   r0, 0x0
    ble-    branch_0x801b33ec
    li      r0, 0x1
    b       branch_0x801b33f0

branch_0x801b33ec:
    li      r0, 0x0
branch_0x801b33f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b342c
    mr      r3, r28
    lwz     r31, 0x104(r28)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    cmpw    r31, r3
    bge-    branch_0x801b342c
    lwz     r3, 0x104(r28)
    lwz     r0, -0x7a40(r13)
    divw    r0, r3, r0
    clrlwi. r0, r0, 31
    bne-    branch_0x801b343c
branch_0x801b342c:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
branch_0x801b343c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl calcRootMatrix__14TMapObjGeneralFv
calcRootMatrix__14TMapObjGeneralFv: # 0x801b345c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    bl      getModel__10TLiveActorCFv
    lhz     r0, 0xfc(r30)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x6
    bne-    branch_0x801b3494
    li      r0, 0x1
    b       branch_0x801b3498

branch_0x801b3494:
    li      r0, 0x0
branch_0x801b3498:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3568
    lwz     r3, 0x68(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801b3568
    lwz     r4, 0x130(r30)
    lwz     r29, 0x28(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x801b3518
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0xc(r29)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0xc(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x10(r29)
    addi    r4, r31, 0x20
    addi    r3, r29, 0x0
    bl      PSMTXCopy
    lfs     f2, 0x2c(r29)
    lfs     f1, 0x1c(r29)
    lfs     f0, 0xc(r29)
    stfs    f0, 0x10(r30)
    stfs    f1, 0x14(r30)
    stfs    f2, 0x18(r30)
    b       branch_0x801b35c4

branch_0x801b3518:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    addi    r29, r3, 0x0
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x801b3540
    lwz     r4, 0x58(r31)
    b       branch_0x801b3544

branch_0x801b3540:
    addi    r4, r31, 0x20
branch_0x801b3544:
    mr      r3, r29
    bl      PSMTXCopy
    lfs     f2, 0x2c(r29)
    lfs     f1, 0x1c(r29)
    lfs     f0, 0xc(r29)
    stfs    f0, 0x10(r30)
    stfs    f1, 0x14(r30)
    stfs    f2, 0x18(r30)
    b       branch_0x801b35c4

branch_0x801b3568:
    lfs     f0, 0x38(r30)
    addi    r3, r31, 0x20
    lfs     f2, -0x2cb8(rtoc)
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x108(r30)
    fctiwz  f5, f2
    lfs     f3, 0x18(r30)
    fctiwz  f0, f0
    stfd    f5, 0x40(sp)
    fsubs   f2, f7, f6
    lfs     f1, 0x10(r30)
    stfd    f4, 0x38(sp)
    lwz     r4, 0x44(sp)
    stfd    f0, 0x30(sp)
    lwz     r5, 0x3c(sp)
    lwz     r6, 0x34(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
branch_0x801b35c4:
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl control__14TMapObjGeneralFv
control__14TMapObjGeneralFv: # 0x801b35f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 7, 7
    beq-    branch_0x801b3690
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801b3630
    li      r0, 0x1
    b       branch_0x801b3634

branch_0x801b3630:
    li      r0, 0x0
branch_0x801b3634:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3690
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801b3650
    li      r0, 0x1
    b       branch_0x801b3654

branch_0x801b3650:
    li      r0, 0x0
branch_0x801b3654:
    cmpwi   r0, 0x0
    bne-    branch_0x801b3690
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r31, 0x10
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b3690
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a8(r12)
    mtlr    r12
    blrl
branch_0x801b3690:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl bind__14TMapObjGeneralFv
bind__14TMapObjGeneralFv: # 0x801b36b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x801b3924
    lwz     r3, 0x88(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801b36fc
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x801b3924

branch_0x801b36fc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x98(sp)
    addi    r4, sp, 0x98
    stw     r0, 0x9c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xa0(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x801b37c4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, sp, 0x98
    lwz     r12, 0x1cc(r12)
    mtlr    r12
    blrl
branch_0x801b37c4:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x801b3810
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x2cc0(rtoc)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x88(sp)
    lfs     f1, 0x84(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801b3810
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, sp, 0x98
    lwz     r12, 0x1d4(r12)
    mtlr    r12
    blrl
branch_0x801b3810:
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801b3828
    li      r0, 0x1
    b       branch_0x801b382c

branch_0x801b3828:
    li      r0, 0x0
branch_0x801b382c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b384c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801b3924

branch_0x801b384c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801b3860
    li      r0, 0x1
    b       branch_0x801b3864

branch_0x801b3860:
    li      r0, 0x0
branch_0x801b3864:
    cmpwi   r0, 0x0
    bne-    branch_0x801b38e8
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x2cc0(rtoc)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x14(sp)
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0x74(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lfs     f0, 0x74(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b38e8
    stw     r4, 0x68(sp)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lfs     f0, 0x6c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b38e8
    stw     r4, 0x5c(sp)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lfs     f0, 0x64(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b38e8
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
branch_0x801b38e8:
    lwz     r0, 0x98(sp)
    addi    r3, sp, 0x40
    lwz     r5, 0x9c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x40(sp)
    lwz     r0, 0xa0(sp)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0x9c(r31)
branch_0x801b3924:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl calcVelocity__14TMapObjGeneralFv
calcVelocity__14TMapObjGeneralFv: # 0x801b3938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801b3960
    li      r0, 0x1
    b       branch_0x801b3964

branch_0x801b3960:
    li      r0, 0x0
branch_0x801b3964:
    cmpwi   r0, 0x0
    beq-    branch_0x801b39b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xbc(r31)
    lfs     f2, 0xb0(r31)
    fneg    f0, f1
    fcmpo   cr0, f2, f1
    ble-    branch_0x801b39a8
    fmr     f2, f1
    b       branch_0x801b39b4

branch_0x801b39a8:
    fcmpo   cr0, f2, f0
    bge-    branch_0x801b39b4
    fmr     f2, f0
branch_0x801b39b4:
    stfs    f2, 0xb0(r31)
branch_0x801b39b8:
    lwz     r3, 0x130(r31)
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b39d0
    li      r0, 0x1
    b       branch_0x801b39d4

branch_0x801b39d0:
    li      r0, 0x0
branch_0x801b39d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3ac8
    lwz     r3, 0x4(r3)
    lfs     f1, 0xac(r31)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r31)
    lwz     r3, 0x130(r31)
    lfs     f1, 0xb4(r31)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x4(r3)
    lfs     f0, 0x18(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
    lfs     f1, 0xbc(r31)
    lfs     f2, 0xac(r31)
    fneg    f0, f1
    fcmpo   cr0, f2, f1
    ble-    branch_0x801b3a28
    fmr     f2, f1
    b       branch_0x801b3a34

branch_0x801b3a28:
    fcmpo   cr0, f2, f0
    bge-    branch_0x801b3a34
    fmr     f2, f0
branch_0x801b3a34:
    stfs    f2, 0xac(r31)
    lfs     f1, 0xbc(r31)
    lfs     f2, 0xb4(r31)
    fneg    f0, f1
    fcmpo   cr0, f2, f1
    ble-    branch_0x801b3a54
    fmr     f2, f1
    b       branch_0x801b3a60

branch_0x801b3a54:
    fcmpo   cr0, f2, f0
    bge-    branch_0x801b3a60
    fmr     f2, f0
branch_0x801b3a60:
    stfs    f2, 0xb4(r31)
    lwz     r3, 0xc4(r31)
    lfs     f1, -0x2cb4(rtoc)
    lfs     f0, 0x38(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b3ac8
    lwz     r3, 0x130(r31)
    lfs     f0, 0xac(r31)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801b3aa0
    lfs     f0, -0x2cc0(rtoc)
    stfs    f0, 0xac(r31)
branch_0x801b3aa0:
    lwz     r3, 0x130(r31)
    lfs     f0, 0xb4(r31)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801b3ac8
    lfs     f0, -0x2cc0(rtoc)
    stfs    f0, 0xb4(r31)
branch_0x801b3ac8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl checkGroundCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
checkGroundCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_: # 0x801b3adc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lfs     f1, 0x4(r4)
    addi    r4, r30, 0xc4
    lfs     f0, 0xc0(r3)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f3, 0x8(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x2cb4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f1, 0x4(r31)
    lfs     f0, 0xc8(r30)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801b3b5c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x1c8(r12)
    mtlr    r12
    blrl
    b       branch_0x801b3b74

branch_0x801b3b5c:
    lwz     r0, 0xd4(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801b3b74
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x801b3b74:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchGround__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
touchGround__14TMapObjGeneralFPQ29JGeometry8TVec3_f_: # 0x801b3b8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    lwz     r3, 0x130(r3)
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b3bbc
    li      r0, 0x1
    b       branch_0x801b3bc0

branch_0x801b3bbc:
    li      r0, 0x0
branch_0x801b3bc0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3bf8
    lwz     r3, 0x4(r3)
    lfs     f1, 0xac(r31)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r31)
    lwz     r3, 0x130(r31)
    lfs     f1, 0xb4(r31)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x4(r3)
    lfs     f0, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r31)
branch_0x801b3bf8:
    lwz     r3, 0x130(r31)
    lwz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b3c10
    li      r0, 0x1
    b       branch_0x801b3c14

branch_0x801b3c10:
    li      r0, 0x0
branch_0x801b3c14:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b3d1c
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x80(sp)
    lwz     r3, 0x130(r31)
    lfs     f0, 0x7c(sp)
    lwz     r3, 0x20(r3)
    fabs    f1, f0
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801b3d1c
    lwz     r5, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r5, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x74(sp)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x70(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r4)
    lwz     r4, 0x130(r31)
    lfs     f1, 0xb0(r31)
    lwz     r4, 0x20(r4)
    lwz     r4, 0x4(r4)
    lfs     f0, 0x4(r4)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    bl      isCoin__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801b3d0c
    lwz     r5, 0xac(r31)
    li      r4, 0x4842
    lwz     r0, 0xb0(r31)
    lwz     r3, -0x6044(r13)
    stw     r5, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x68(sp)
    lfs     f0, 0x64(sp)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b3d4c
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x4842
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x801b3d4c

branch_0x801b3d0c:
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      startSound__11TMapObjBaseFUs
    b       branch_0x801b3d4c

branch_0x801b3d1c:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x2cc0(rtoc)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x4(r4)
branch_0x801b3d4c:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl checkRoofCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
checkRoofCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_: # 0x801b3d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lfs     f1, 0x4(r4)
    addi    r4, r30, 0x13c
    lfs     f0, 0xc0(r3)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r31)
    lfs     f3, 0x8(r31)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x140(r30)
    lfs     f2, 0x4(r31)
    lfs     f1, 0xc0(r30)
    lfs     f0, 0x140(r30)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801b3dd8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x1d8(r12)
    mtlr    r12
    blrl
branch_0x801b3dd8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchRoof__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
touchRoof__14TMapObjGeneralFPQ29JGeometry8TVec3_f_: # 0x801b3df0
    lfs     f0, 0x140(r3)
    stfs    f0, 0x4(r4)
    blr


.globl checkWallCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_
checkWallCollision__14TMapObjGeneralFPQ29JGeometry8TVec3_f_: # 0x801b3dfc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r3, 0x130(r3)
    lfs     f1, 0x4(r4)
    addi    r4, sp, 0x28
    lwz     r3, 0x20(r3)
    lwz     r3, 0x4(r3)
    lfs     f0, 0x1c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r30)
    lwz     r3, 0x130(r31)
    lfs     f0, 0xbc(r31)
    lwz     r3, 0x20(r3)
    lwz     r6, 0x0(r30)
    lwz     r7, 0x8(r3)
    lwz     r5, 0x4(r30)
    lwz     r3, -0x6328(r13)
    stw     r6, 0x28(sp)
    stw     r5, 0x2c(sp)
    lwz     r5, 0x8(r30)
    stw     r5, 0x30(sp)
    stfs    f0, 0x34(sp)
    stw     r0, 0x38(sp)
    stw     r7, 0x40(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lwz     r4, 0x130(r31)
    clrlwi. r0, r3, 24
    lfs     f1, 0x4(r30)
    lwz     r3, 0x20(r4)
    lwz     r3, 0x4(r3)
    lfs     f0, 0x1c(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r30)
    beq-    branch_0x801b3ec4
    lwz     r0, 0x44(sp)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    stw     r0, 0x138(r31)
    addi    r5, sp, 0x28
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1d0(r12)
    mtlr    r12
    blrl
    b       branch_0x801b3ecc

branch_0x801b3ec4:
    li      r0, 0x0
    stw     r0, 0x138(r31)
branch_0x801b3ecc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl touchWall__14TMapObjGeneralFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord
touchWall__14TMapObjGeneralFPQ29JGeometry8TVec3_f_P18TBGWallCheckRecord: # 0x801b3ee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x8(r4)
    lwz     r6, 0x130(r3)
    lwz     r4, 0x1c(r5)
    addi    r5, r3, 0xac
    lwz     r6, 0x20(r6)
    lwz     r6, 0x4(r6)
    lfs     f1, 0x8(r6)
    bl      calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl work__14TMapObjGeneralFv
work__14TMapObjGeneralFv: # 0x801b3f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x9
    bgt-    branch_0x801b400c
    lis     r4, 0x803d
    subi    r4, r4, 0x72f8
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    lwz     r12, 0x0(r3)
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
    b       branch_0x801b400c


.incbin "./baserom/code/Text_0x80005600.bin", 0x1ae970, 0x801b400c - 0x801b3f70
branch_0x801b400c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appear__14TMapObjGeneralFv
appear__14TMapObjGeneralFv: # 0x801b401c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 8, 8
    beq-    branch_0x801b4070
    lfs     f0, -0x7a38(r13)
    stfs    f0, 0x24(r31)
    lfs     f0, -0x7a38(r13)
    stfs    f0, 0x28(r31)
    lfs     f0, -0x7a38(r13)
    stfs    f0, 0x2c(r31)
branch_0x801b4070:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801b4088
    li      r0, 0x1
    b       branch_0x801b408c

branch_0x801b4088:
    li      r0, 0x0
branch_0x801b408c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b40b4
    lwz     r3, -0x6048(r13)
    lwz     r0, 0x134(r31)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801b40c0
branch_0x801b40b4:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startSound__11TMapObjBaseFUs
branch_0x801b40c0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x174(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x801b40f8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    stw     r3, 0x104(r31)
branch_0x801b40f8:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl kill__14TMapObjGeneralFv
kill__14TMapObjGeneralFv: # 0x801b4114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r4, 0xf0(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    ori     r4, r4, 0x18
    stw     r4, 0xf0(r31)
    li      r4, 0x2
    stw     r0, 0x104(r31)
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      startSound__11TMapObjBaseFUs
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x17c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl ensureTakeSituation__14TMapObjGeneralFv
ensureTakeSituation__14TMapObjGeneralFv: # 0x801b4194
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      ensureTakeSituation__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x6
    bne-    branch_0x801b41c0
    li      r0, 0x1
    b       branch_0x801b41c4

branch_0x801b41c0:
    li      r0, 0x0
branch_0x801b41c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b41ec
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801b41ec
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801b41ec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl hold__14TMapObjGeneralFP10TTakeActor
hold__14TMapObjGeneralFP10TTakeActor: # 0x801b4200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b4244
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b4244
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801b4244:
    lwz     r3, 0x64(r30)
    li      r0, 0x6
    ori     r3, r3, 0x1
    stw     r3, 0x64(r30)
    stw     r31, 0x68(r30)
    sth     r0, 0xfc(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl recover__14TMapObjGeneralFv
recover__14TMapObjGeneralFv: # 0x801b4274
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r4, 0x130(r31)
    lfs     f0, -0x2cb0(rtoc)
    lwz     r4, 0x14(r4)
    lfd     f4, -0x2ca8(rtoc)
    lwz     r4, 0xc(r4)
    lwz     r3, -0x62f0(r13)
    lfs     f5, 0x20(r4)
    lfs     f1, 0x10(r31)
    fdivs   f0, f5, f0
    lfs     f2, 0x144(r31)
    lfs     f3, 0x18(r31)
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r4, 0x44(sp)
    clrlwi  r4, r4, 16
    stw     r4, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f4, f0, f4
    bl      clean__17TPollutionManagerFffff
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x6
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x9
    sth     r0, 0xfc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    li      r4, 0x8
    bl      startSound__11TMapObjBaseFUs
    lfs     f0, -0x2cc0(rtoc)
    mr      r3, r31
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    bl      hasModelOrAnimData__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b4368
    lfs     f1, 0x14(r31)
    mr      r3, r31
    lfs     f0, 0x144(r31)
    stfs    f0, 0x14(r31)
    stfs    f1, 0x144(r31)
    bl      getModel__10TLiveActorCFv
branch_0x801b4368:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl touchPlayer__14TMapObjGeneralFP9THitActor
touchPlayer__14TMapObjGeneralFP9THitActor: # 0x801b437c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      touchPlayer__11TMapObjBaseFP9THitActor
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      hasModelOrAnimData__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b43bc
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x4
    sth     r0, 0xfc(r31)
branch_0x801b43bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchWater__14TMapObjGeneralFP9THitActor
touchWater__14TMapObjGeneralFP9THitActor: # 0x801b43d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 9, 9
    beq-    branch_0x801b440c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x801b4438

branch_0x801b440c:
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      hasModelOrAnimData__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b4434
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x5
    sth     r0, 0xfc(r31)
branch_0x801b4434:
    li      r3, 0x1
branch_0x801b4438:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessageFromPlayer__14TMapObjGeneralFv
receiveMessageFromPlayer__14TMapObjGeneralFv: # 0x801b444c
    mflr    r0
    li      r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      startAnim__11TMapObjBaseFUs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeObjBuried__14TMapObjGeneralFv
makeObjBuried__14TMapObjGeneralFv: # 0x801b4470
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f0, 0x14(r3)
    stfs    f0, 0x144(r31)
    lwz     r4, 0x130(r31)
    lfs     f1, 0x14(r31)
    lwz     r4, 0x14(r4)
    lwz     r4, 0xc(r4)
    lfs     f0, 0x2c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      removeMapCollision__11TMapObjBaseFv
    li      r0, 0x0
    stw     r0, 0x74(r31)
    li      r0, 0x8
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeObjRecovered__14TMapObjGeneralFv
makeObjRecovered__14TMapObjGeneralFv: # 0x801b44dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appeared__14TMapObjGeneralFv
appeared__14TMapObjGeneralFv: # 0x801b4528
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x801b4570
    lwz     r0, 0x104(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801b4554
    li      r0, 0x1
    b       branch_0x801b4558

branch_0x801b4554:
    li      r0, 0x0
branch_0x801b4558:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b4570
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801b4570:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl appearing__14TMapObjGeneralFv
appearing__14TMapObjGeneralFv: # 0x801b4580
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      hasAnim__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b45b8
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801b4610
    b       branch_0x801b4630

branch_0x801b45b8:
    lfs     f1, 0x24(r31)
    lfs     f0, -0x7a38(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, -0x7a38(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x7a38(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x124(r31)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801b4630
    lfs     f0, 0x124(r31)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x128(r31)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x12c(r31)
    stfs    f0, 0x2c(r31)
branch_0x801b4610:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801b4630
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
branch_0x801b4630:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl breaking__14TMapObjGeneralFv
breaking__14TMapObjGeneralFv: # 0x801b4644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b46b0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 12, 12
    beq-    branch_0x801b46b0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1b0(r12)
    mtlr    r12
    blrl
branch_0x801b46b0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl sinking__14TMapObjGeneralFv
sinking__14TMapObjGeneralFv: # 0x801b46c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r4, 0x130(r3)
    lfs     f1, 0x14(r3)
    li      r3, 0x0
    lwz     r4, 0x24(r4)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lhz     r0, 0x48(r31)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x801b474c
branch_0x801b4704:
    lwz     r4, 0x44(r31)
    lwzx    r4, r4, r3
    lwz     r0, 0x4c(r4)
    rlwinm. r0, r0, 0, 7, 7
    beq-    branch_0x801b4720
    li      r0, 0x1
    b       branch_0x801b4724

branch_0x801b4720:
    li      r0, 0x0
branch_0x801b4724:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b4744
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    b       branch_0x801b47d0

branch_0x801b4744:
    addi    r3, r3, 0x4
    bdnz+      branch_0x801b4704
branch_0x801b474c:
    lwz     r3, 0x130(r31)
    lfs     f2, 0x14(r31)
    lwz     r3, 0x14(r3)
    lfs     f0, 0x144(r31)
    lwz     r3, 0xc(r3)
    lfs     f1, 0x24(r3)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801b47d0
    lfs     f1, 0x10(r31)
    lfs     f0, 0x10c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b4790
    lfs     f1, 0x18(r31)
    lfs     f0, 0x114(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801b47bc
branch_0x801b4790:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    b       branch_0x801b47d0

branch_0x801b47bc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
branch_0x801b47d0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl recovering__14TMapObjGeneralFv
recovering__14TMapObjGeneralFv: # 0x801b47e4
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    bl      startSound__11TMapObjBaseFUs
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      hasModelOrAnimData__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b487c
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    mr      r3, r30
    lfs     f1, 0x144(r30)
    lfs     f2, 0x1c(r31)
    lfs     f0, 0x5c(r30)
    fsubs   f31, f2, f1
    fadds   f0, f0, f31
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x6c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801b4860
    lfs     f0, 0x14(r3)
    fadds   f0, f0, f31
    stfs    f0, 0x14(r3)
branch_0x801b4860:
    lfs     f0, 0x1c(r31)
    mr      r3, r30
    stfs    f0, 0x144(r30)
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801b48c8
    b       branch_0x801b48dc

branch_0x801b487c:
    lfs     f1, 0x14(r30)
    lfs     f0, 0x144(r30)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801b48c8
    lwz     r3, 0x130(r30)
    lwz     r3, 0x24(r3)
    lfs     f0, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r4, 0x6c(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x801b48dc
    lwz     r3, 0x130(r30)
    lfs     f1, 0x14(r4)
    lwz     r3, 0x24(r3)
    lfs     f0, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r4)
    b       branch_0x801b48dc

branch_0x801b48c8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
branch_0x801b48dc:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl holding__14TMapObjGeneralFv
holding__14TMapObjGeneralFv: # 0x801b48f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r4, r31, 0x10
    lwz     r6, 0x68(r3)
    addi    r5, r31, 0xc4
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r6)
    stw     r0, 0x18(r31)
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchingPlayer__14TMapObjGeneralFv
touchingPlayer__14TMapObjGeneralFv: # 0x801b4950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b4990
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      hasModelOrAnimData__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b4990
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
branch_0x801b4990:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchingWater__14TMapObjGeneralFv
touchingWater__14TMapObjGeneralFv: # 0x801b49a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b49e4
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      hasModelOrAnimData__11TMapObjBaseCFUs
    clrlwi. r0, r3, 24
    beq-    branch_0x801b49e4
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
branch_0x801b49e4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl thrown__14TMapObjGeneralFv
thrown__14TMapObjGeneralFv: # 0x801b49f8
    mflr    r0
    lis     r6, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x10
    lwz     r7, -0x60b4(r13)
    addi    r5, r31, 0xc4
    lfs     f2, 0x8(r7)
    lfs     f1, 0x4(r7)
    lfs     f0, 0x0(r7)
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    lwz     r3, -0x60b0(r13)
    lwz     r7, -0x60ac(r13)
    lha     r0, 0x0(r3)
    lha     r3, 0x0(r7)
    xoris   r0, r0, 0x8000
    lwz     r8, -0x60a8(r13)
    stw     r0, 0x84(sp)
    xoris   r3, r3, 0x8000
    lha     r0, 0x0(r8)
    stw     r6, 0x80(sp)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x2ca0(rtoc)
    stw     r3, 0x7c(sp)
    lfd     f0, 0x80(sp)
    stw     r0, 0x74(sp)
    fsubs   f2, f0, f3
    stw     r6, 0x78(sp)
    lfd     f0, 0x78(sp)
    stw     r6, 0x70(sp)
    fsubs   f1, f0, f3
    lfd     f0, 0x70(sp)
    stfs    f2, 0x30(r31)
    fsubs   f0, f0, f3
    stfs    f1, 0x34(r31)
    stfs    f0, 0x38(r31)
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x138(r31)
    stw     r0, 0x68(r31)
    lwz     r5, -0x60ac(r13)
    lwz     r4, 0x130(r31)
    lha     r0, 0x0(r5)
    lwz     r8, -0x5eac(r13)
    clrlwi  r0, r0, 16
    lwz     r4, 0x20(r4)
    sraw    r5, r0, r8
    lwz     r6, -0x6090(r13)
    lwz     r7, 0x4(r4)
    sraw    r0, r0, r8
    lwz     r4, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f2, 0x2c(r7)
    lfsx    f0, r4, r0
    slwi    r0, r5, 2
    lwz     r4, -0x5ea4(r13)
    fmuls   f0, f0, f2
    lfs     f3, 0x0(r6)
    lfsx    f1, r4, r0
    lwz     r4, -0x60a4(r13)
    fmuls   f2, f1, f2
    lwz     r5, -0x609c(r13)
    fmuls   f0, f3, f0
    lfs     f5, -0x7a34(r13)
    lfs     f1, 0x0(r4)
    fmuls   f2, f3, f2
    lfs     f3, 0x0(r5)
    fmadds  f0, f5, f1, f0
    lfs     f4, 0x30(r7)
    fmadds  f1, f5, f3, f2
    stfs    f0, 0xac(r31)
    stfs    f4, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x68(sp)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    li      r4, 0x5
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    bl      startAnim__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x5
    bl      startSound__11TMapObjBaseFUs
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl put__14TMapObjGeneralFv
put__14TMapObjGeneralFv: # 0x801b4bdc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    stw     r0, 0x68(r3)
    stw     r0, 0x68(r31)
    lwz     r12, 0x0(r31)
    lwz     r30, 0x104(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    stw     r30, 0x104(r31)
    lwz     r3, -0x60ac(r13)
    lwz     r0, -0x5eac(r13)
    lhz     r3, 0x0(r3)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f31, 0x58(r31)
    slwi    r0, r0, 2
    lwz     r30, -0x60b4(r13)
    lfsx    f30, r4, r0
    bl      SMS_GetMarioDamageRadius__Fv
    fadds   f2, f31, f1
    lfs     f1, -0x2c98(rtoc)
    lfs     f0, 0x0(r30)
    fadds   f1, f1, f2
    fmadds  f0, f30, f1, f0
    stfs    f0, 0x10(r31)
    lwz     r3, -0x60b4(r13)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x14(r31)
    lwz     r3, -0x60ac(r13)
    lwz     r0, -0x5eac(r13)
    lhz     r3, 0x0(r3)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f30, 0x58(r31)
    slwi    r0, r0, 2
    lwz     r30, -0x60b4(r13)
    lfsx    f31, r4, r0
    bl      SMS_GetMarioDamageRadius__Fv
    fadds   f2, f30, f1
    lfs     f1, -0x2c98(rtoc)
    lfs     f0, 0x8(r30)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    fadds   f1, f1, f2
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x18(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl sink__14TMapObjGeneralFv
sink__14TMapObjGeneralFv: # 0x801b4cec
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x7
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lfs     f0, -0x2cc0(rtoc)
    stfs    f0, 0xb4(r3)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    lwz     r5, 0xf0(r31)
    ori     r5, r5, 0x10
    stw     r5, 0xf0(r31)
    sth     r0, 0xfc(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x144(r31)
    bl      setUpMapCollision__11TMapObjBaseFUs
    addi    r3, r31, 0x0
    li      r4, 0x6
    bl      startSound__11TMapObjBaseFUs
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl waitToAppear__14TMapObjGeneralFl
waitToAppear__14TMapObjGeneralFl: # 0x801b4d54
    cmpwi   r4, 0x0
    bne-    branch_0x801b4d68
    lwz     r0, -0x7a3c(r13)
    stw     r0, 0x104(r3)
    b       branch_0x801b4d6c

branch_0x801b4d68:
    stw     r4, 0x104(r3)
branch_0x801b4d6c:
    li      r0, 0xa
    sth     r0, 0xfc(r3)
    blr


.globl waitingToRecover__14TMapObjGeneralFv
waitingToRecover__14TMapObjGeneralFv: # 0x801b4d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r4, r31, 0x10c
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x801b4dbc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x801b4dbc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl waitingToAppear__14TMapObjGeneralFv
waitingToAppear__14TMapObjGeneralFv: # 0x801b4dd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x104(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801b4e00
    li      r0, 0x1
    b       branch_0x801b4e04

branch_0x801b4e00:
    li      r0, 0x0
branch_0x801b4e04:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b4f14
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x801b4e24
    li      r0, 0x1
    b       branch_0x801b4e28

branch_0x801b4e24:
    li      r0, 0x0
branch_0x801b4e28:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b4ea8
    lwz     r4, -0x60b4(r13)
    lfs     f3, 0x10c(r31)
    lfs     f2, 0x0(r4)
    lfs     f1, 0x110(r31)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r4)
    lfs     f2, 0x114(r31)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r4)
    fsubs   f2, f2, f0
    lfs     f30, 0x58(r31)
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmr     f31, f1
    bl      SMS_GetMarioDamageRadius__Fv
    fadds   f1, f1, f30
    lfs     f0, -0x2c94(rtoc)
    fadds   f0, f0, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x801b4f14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x801b4f14

branch_0x801b4ea8:
    lwz     r4, -0x60b4(r13)
    lfs     f3, 0x10c(r31)
    lfs     f2, 0x0(r4)
    lfs     f1, 0x110(r31)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r4)
    lfs     f2, 0x114(r31)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r4)
    fsubs   f2, f2, f0
    lfs     f30, 0x58(r31)
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmr     f31, f1
    bl      SMS_GetMarioDamageRadius__Fv
    fadds   f0, f1, f30
    fcmpo   cr0, f31, f0
    ble-    branch_0x801b4f14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x801b4f14:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl isPollutedGround__14TMapObjGeneralCFRCQ29JGeometry8TVec3_f_
isPollutedGround__14TMapObjGeneralCFRCQ29JGeometry8TVec3_f_: # 0x801b4f30
    mflr    r0
    addi    r5, r3, 0x10c
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    lwz     r3, -0x62f0(r13)
    lfs     f2, 0x4(r5)
    lfs     f1, 0x0(r4)
    lfs     f3, 0x8(r5)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x801b5004
    lfs     f1, 0x0(r31)
    lfs     f2, -0x2c90(rtoc)
    lfs     f0, 0x8(r31)
    fsubs   f1, f1, f2
    lwz     r3, -0x62f0(r13)
    fsubs   f3, f0, f2
    lfs     f2, 0x4(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x801b5004
    lfs     f2, -0x2c90(rtoc)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x8(r31)
    fadds   f1, f2, f1
    lwz     r3, -0x62f0(r13)
    fsubs   f3, f0, f2
    lfs     f2, 0x4(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x801b5004
    lfs     f1, 0x0(r31)
    lfs     f2, -0x2c90(rtoc)
    lfs     f0, 0x8(r31)
    fsubs   f1, f1, f2
    lwz     r3, -0x62f0(r13)
    fadds   f3, f2, f0
    lfs     f2, 0x4(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x801b5004
    lfs     f2, -0x2c90(rtoc)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x8(r31)
    fadds   f1, f2, f1
    lwz     r3, -0x62f0(r13)
    fadds   f3, f2, f0
    lfs     f2, 0x4(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x801b500c
branch_0x801b5004:
    li      r3, 0x1
    b       branch_0x801b5010

branch_0x801b500c:
    li      r3, 0x0
branch_0x801b5010:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MapObjGeneral_cpp
__sinit_MapObjGeneral_cpp: # 0x801b5024
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6e18
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801b506c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801b506c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801b509c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801b509c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801b50cc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801b50cc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801b50fc
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801b50fc:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801b512c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801b512c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801b515c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801b515c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801b518c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801b518c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801b51bc
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801b51bc:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801b51ec
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801b51ec:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801b521c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801b521c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801b524c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801b524c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801b527c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801b527c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801b52ac
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801b52ac:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801b52dc
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801b52dc:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801b530c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801b530c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
