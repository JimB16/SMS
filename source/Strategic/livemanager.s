
.globl hasMapCollision__12TLiveManagerCFv
hasMapCollision__12TLiveManagerCFv: # 0x8021ae00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8021ae20
    li      r3, 0x0
    b       branch_0x8021ae38

branch_0x8021ae20:
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xec(r12)
    mtlr    r12
    blrl
branch_0x8021ae38:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getActorByFlag__12TLiveManagerCFUl
getActorByFlag__12TLiveManagerCFUl: # 0x8021ae48
    lwz     r0, 0x14(r3)
    li      r5, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x8021ae80
branch_0x8021ae5c:
    lwz     r6, 0x18(r3)
    lwzx    r6, r6, r5
    lwz     r0, 0xf0(r6)
    and.    r0, r0, r4
    beq-    branch_0x8021ae78
    mr      r3, r6
    blr

branch_0x8021ae78:
    addi    r5, r5, 0x4
    bdnz+      branch_0x8021ae5c
branch_0x8021ae80:
    li      r3, 0x0
    blr


.globl perform__12TLiveManagerFUlPQ26JDrama9TGraphics
perform__12TLiveManagerFUlPQ26JDrama9TGraphics: # 0x8021ae88
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x8021af60
    lwz     r0, 0x30(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x8021aefc
    li      r0, 0xff
    lwz     r27, R13Off_m0x5ff8(r13)
    stb     r0, 0x34(sp)
    cmplwi  r27, 0x0
    stb     r0, 0x35(sp)
    stb     r0, 0x36(sp)
    stb     r0, 0x37(sp)
    lwz     r28, 0x34(sp)
    beq-    branch_0x8021aefc
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8021aefc:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r31
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x30(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x8021af60
    lwz     r27, R13Off_m0x5ff8(r13)
    cmplwi  r27, 0x0
    beq-    branch_0x8021af60
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8021af60:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TObjManagerFUlPQ26JDrama9TGraphics
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setFlagOutOfCube__12TLiveManagerFv
setFlagOutOfCube__12TLiveManagerFv: # 0x8021af84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    li      r29, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    lfs     f31, -0x18d0(r2)
    b       branch_0x8021b01c

branch_0x8021afb8:
    lwz     r5, 0x18(r28)
    addi    r4, sp, 0x14
    lwz     r3, R13Off_m0x70dc(r13)
    lwzx    r30, r5, r31
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1c(sp)
    lfs     f0, 0x18(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x18(sp)
    bl      isInAreaCube__16TCubeManagerAreaCFRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8021b008
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r30)
    b       branch_0x8021b014

branch_0x8021b008:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x200
    stw     r0, 0xf0(r30)
branch_0x8021b014:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x8021b01c:
    lwz     r0, 0x14(r28)
    cmpw    r29, r0
    blt+    branch_0x8021afb8
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl clipActors__12TLiveManagerFPQ26JDrama9TGraphics
clipActors__12TLiveManagerFPQ26JDrama9TGraphics: # 0x8021b04c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, -0x18cc(r2)
    lfs     f2, -0x18c8(r2)
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff: # 0x8021b074
    mflr    r0
    fmr     f4, f1
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    fmr     f30, f2
    stmw    r27, 0x44(sp)
    mr      r29, r4
    mr      r28, r3
    lwz     r5, R13Off_m0x7118(r13)
    lfs     f3, 0xe8(r4)
    lfs     f0, 0x4c(r5)
    lfs     f1, 0x48(r5)
    fmr     f2, f0
    bl      SetViewFrustumClipCheckPerspective__Fffff
    lfs     f31, -0x18d0(r2)
    li      r30, 0x0
    li      r27, 0x0
    b       branch_0x8021b174

branch_0x8021b0c4:
    lwz     r3, 0x18(r28)
    lwzx    r31, r3, r27
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x8021b0e8
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    b       branch_0x8021b16c

branch_0x8021b0e8:
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x3c(sp)
    lfs     f0, 0x38(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x38(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x8021b138
    addi    r3, sp, 0x34
    bl      SMS_IsInOtherFastCube__FRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8021b138
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r31)
    b       branch_0x8021b16c

branch_0x8021b138:
    fmr     f1, f30
    addi    r3, r29, 0x0
    addi    r4, r31, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8021b160
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    b       branch_0x8021b16c

branch_0x8021b160:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r31)
branch_0x8021b16c:
    addi    r30, r30, 0x1
    addi    r27, r27, 0x4
branch_0x8021b174:
    lwz     r0, 0x14(r28)
    cmpw    r30, r0
    blt+    branch_0x8021b0c4
    lmw     r27, 0x44(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl manageActor__12TLiveManagerFP10TLiveActor
manageActor__12TLiveManagerFP10TLiveActor: # 0x8021b19c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x14(r3)
    extsh   r0, r0
    sth     r0, 0x7c(r4)
    bl      manageObj__11TObjManagerFP9THitActor
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__12TLiveManagerFR20JSUMemoryInputStream
load__12TLiveManagerFR20JSUMemoryInputStream: # 0x8021b1c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TObjManagerFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createSpcBinary__12TLiveManagerFv
createSpcBinary__12TLiveManagerFv: # 0x8021b208
    mflr    r0
    lis     r4, unk_8039d1f8@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_8039d1f8@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    lwz     r3, 0x1c(r3)
    bl      getRes__9TObjCharaCFPCc
    mr.     r31, r3
    beq-    branch_0x8021b270
    li      r3, 0x8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8021b264
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__10TSpcBinaryFPv
    lis     r3, __vvt__29TSpcTypedBinary_10TLiveActor_@ha
    addi    r0, r3, __vvt__29TSpcTypedBinary_10TLiveActor_@l
    stw     r0, 0x4(r29)
branch_0x8021b264:
    stw     r29, 0x34(r30)
    lwz     r3, 0x34(r30)
    bl      init__10TSpcBinaryFv
branch_0x8021b270:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__12TLiveManagerFPCc
__ct__12TLiveManagerFPCc: # 0x8021b28c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TObjManagerFPCc
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__12TLiveManager@ha
    addi    r0, r3, __vvt__12TLiveManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r4, r31, 0x0
    stw     r0, 0x34(r31)
    lwz     r3, R13Off_m0x70b0(r13)
    bl      registerManager__10TConductorFP12TLiveManager
    lwz     r4, R13Off_m0x610c(r13)
    li      r0, 0x1
    addi    r3, r31, 0x0
    lwz     r4, 0x14(r4)
    lwz     r4, 0x4(r4)
    stb     r0, 0x20(r4)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

