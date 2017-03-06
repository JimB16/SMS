
.globl __ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap
__ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap: # 0x80324ad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r27, r4, 0x0
    addi    r31, r5, 0x0
    addi    r30, r6, 0x0
    addi    r29, r7, 0x0
    addi    r28, r8, 0x0
    stw     r3, 0x8(sp)
    lwz     r26, 0x8(sp)
    addi    r3, r26, 0x0
    bl      initiate__10JSUPtrListFv
    addi    r3, r26, 0x14
    bl      initiate__10JSUPtrListFv
    addi    r3, r26, 0x28
    bl      initiate__10JSUPtrListFv
    lfs     f0, 0x850(rtoc)
    lis     r4, 0x8032
    lis     r3, 0x8032
    stfs    f0, 0x3c(r26)
    addi    r5, r3, 0x4dd8
    addi    r4, r4, 0x4da8
    lfs     f0, 0x854(rtoc)
    addi    r3, r26, 0x44
    li      r6, 0xc
    stfs    f0, 0x40(r26)
    li      r7, 0x8
    bl      __construct_array
    cmplwi  r28, 0x0
    bne-    branch_0x80324b50
    lwz     r28, -0x5f2c(r13)
branch_0x80324b50:
    mulli   r3, r31, 0xdc
    addi    r0, r3, 0x1f
    clrrwi  r3, r0, 5
    addi    r3, r3, 0x80
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    lwz     r4, 0x8(sp)
    stw     r3, 0xc(r4)
    lwz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80324bdc
    li      r26, 0x0
    b       branch_0x80324bd4

branch_0x80324b88:
    lwz     r4, 0x8(sp)
    li      r3, 0xdc
    li      r5, 0x0
    lwz     r4, 0xc(r4)
    bl      __nw__FUlP7JKRHeapi
    mr.     r4, r3
    beq-    branch_0x80324bb0
    mr      r3, r4
    bl      __ct__11JPAParticleFv
    mr      r4, r3
branch_0x80324bb0:
    lwz     r3, 0x8(sp)
    mr      r25, r4
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    mr      r3, r25
    lwz     r12, 0x58(r25)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
branch_0x80324bd4:
    cmpw    r26, r31
    blt+    branch_0x80324b88
branch_0x80324bdc:
    mulli   r3, r30, 0x220
    addi    r0, r3, 0x1f
    clrrwi  r3, r0, 5
    addi    r3, r3, 0x80
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    lwz     r4, 0x8(sp)
    stw     r3, 0x20(r4)
    lwz     r0, 0x20(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80324c50
    li      r25, 0x0
    b       branch_0x80324c48

branch_0x80324c14:
    lwz     r4, 0x8(sp)
    li      r3, 0x220
    li      r5, 0x0
    lwz     r4, 0x20(r4)
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80324c34
    bl      __ct__14JPABaseEmitterFv
branch_0x80324c34:
    lwz     r5, 0x8(sp)
    addi    r4, r3, 0x0
    addi    r3, r5, 0x14
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    addi    r25, r25, 0x1
branch_0x80324c48:
    cmpw    r25, r30
    blt+    branch_0x80324c14
branch_0x80324c50:
    mulli   r3, r29, 0x90
    addi    r0, r3, 0x1f
    clrrwi  r3, r0, 5
    addi    r3, r3, 0x80
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    lwz     r4, 0x8(sp)
    stw     r3, 0x34(r4)
    lwz     r0, 0x34(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80324cc4
    li      r25, 0x0
    b       branch_0x80324cbc

branch_0x80324c88:
    lwz     r4, 0x8(sp)
    li      r3, 0x90
    li      r5, 0x0
    lwz     r4, 0x34(r4)
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80324ca8
    bl      __ct__12JPABaseFieldFv
branch_0x80324ca8:
    lwz     r5, 0x8(sp)
    addi    r4, r3, 0x0
    addi    r3, r5, 0x28
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    addi    r25, r25, 0x1
branch_0x80324cbc:
    cmpw    r25, r29
    blt+    branch_0x80324c88
branch_0x80324cc4:
    lwz     r3, 0x8(sp)
    li      r0, 0x2
    li      r12, 0x0
    mtctr   r0
    stw     r31, 0x10(r3)
    stw     r30, 0x24(r3)
    stw     r29, 0x38(r3)
    stw     r27, 0xa4(r3)
    stw     r12, 0xa8(r3)
    stw     r12, 0xac(r3)
    stw     r12, 0xb0(r3)
    stw     r12, 0xb4(r3)
    stw     r12, 0xb8(r3)
    stw     r12, 0xbc(r3)
    stw     r12, 0xc0(r3)
    stw     r12, 0xc4(r3)
branch_0x80324d04:
    lwz     r3, 0x8(sp)
    addi    r10, r12, 0xc8
    li      r11, 0x0
    stwx    r11, r3, r10
    addi    r9, r12, 0xcc
    addi    r8, r12, 0xd0
    stwx    r11, r3, r9
    addi    r7, r12, 0xd4
    addi    r6, r12, 0xd8
    stwx    r11, r3, r8
    addi    r5, r12, 0xdc
    addi    r4, r12, 0xe0
    stwx    r11, r3, r7
    addi    r0, r12, 0xe4
    addi    r10, r12, 0xe8
    stwx    r11, r3, r6
    addi    r9, r12, 0xec
    addi    r8, r12, 0xf0
    stwx    r11, r3, r5
    addi    r7, r12, 0xf4
    addi    r6, r12, 0xf8
    stwx    r11, r3, r4
    addi    r5, r12, 0xfc
    addi    r4, r12, 0x100
    stwx    r11, r3, r0
    addi    r0, r12, 0x104
    addi    r12, r12, 0x40
    stwx    r11, r3, r10
    stwx    r11, r3, r9
    stwx    r11, r3, r8
    stwx    r11, r3, r7
    stwx    r11, r3, r6
    stwx    r11, r3, r5
    stwx    r11, r3, r4
    stwx    r11, r3, r0
    bdnz+      branch_0x80324d04
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__25JSUList_14JPABaseEmitter_Fv
__ct__25JSUList_14JPABaseEmitter_Fv: # 0x80324da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initiate__10JSUPtrListFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25JSUList_14JPABaseEmitter_Fv
__dt__25JSUList_14JPABaseEmitter_Fv: # 0x80324dd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80324e14
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x80324e14
    mr      r3, r30
    bl      __dl__FPv
branch_0x80324e14:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcBase__17JPAEmitterManagerFUc
calcBase__17JPAEmitterManagerFUc: # 0x80324e30
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    mulli   r4, r0, 0xc
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    add     r3, r29, r4
    lwz     r0, 0x4c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80324ef0
    addi    r0, r4, 0x44
    lwzx    r3, r29, r0
    b       branch_0x80324ec4

branch_0x80324e70:
    lwz     r30, 0x0(r3)
    lwz     r31, 0xc(r3)
    mr      r3, r30
    bl      checkStartFrame__14JPABaseEmitterFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80324ec0
    mr      r3, r30
    bl      checkMaxFrame__14JPABaseEmitterFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80324eb8
    lwz     r3, 0xfc(r30)
    lwz     r0, 0x108(r30)
    add.    r0, r3, r0
    bne-    branch_0x80324eb8
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      deleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
    b       branch_0x80324ec0

branch_0x80324eb8:
    mr      r3, r30
    bl      calc__14JPABaseEmitterFv
branch_0x80324ec0:
    mr      r3, r31
branch_0x80324ec4:
    cmplwi  r3, 0x0
    bne+    branch_0x80324e70
    lfs     f1, 0x3c(r29)
    lfs     f0, 0x40(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r29)
    lfs     f1, 0x3c(r29)
    lfs     f0, 0x850(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80324ef0
    stfs    f0, 0x3c(r29)
branch_0x80324ef0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl calc__17JPAEmitterManagerFv
calc__17JPAEmitterManagerFv: # 0x80324f0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
branch_0x80324f28:
    addi    r3, r30, 0x0
    clrlwi  r4, r31, 24
    bl      calcBase__17JPAEmitterManagerFUc
    addi    r31, r31, 0x1
    cmpwi   r31, 0x8
    blt+    branch_0x80324f28
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl draw__17JPAEmitterManagerFP11JPADrawInfo
draw__17JPAEmitterManagerFP11JPADrawInfo: # 0x80324f58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    li      r30, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x58(sp)
    addi    r28, r3, 0x0
branch_0x80324f84:
    lfs     f31, 0x4(r29)
    bl      JPAGetEmitterInfoPtr__Fv
    stfs    f31, 0x15c(r3)
    lfs     f31, 0x8(r29)
    bl      JPAGetEmitterInfoPtr__Fv
    clrlwi  r0, r30, 24
    stfs    f31, 0x160(r3)
    mulli   r0, r0, 0xc
    add     r3, r28, r0
    lwz     r0, 0x4c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80324ff8
    lwz     r31, 0x44(r3)
    b       branch_0x80324ff0

branch_0x80324fbc:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x11c(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80324fd4
    li      r0, 0x1
    b       branch_0x80324fd8

branch_0x80324fd4:
    li      r0, 0x0
branch_0x80324fd8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80324fec
    lwz     r4, 0x0(r29)
    addi    r3, r3, 0x30
    bl      draw__7JPADrawFPA4_f
branch_0x80324fec:
    lwz     r31, 0xc(r31)
branch_0x80324ff0:
    cmplwi  r31, 0x0
    bne+    branch_0x80324fbc
branch_0x80324ff8:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x8
    blt+    branch_0x80324f84
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x70
    blr


.globl draw__17JPAEmitterManagerFP11JPADrawInfoUc
draw__17JPAEmitterManagerFP11JPADrawInfoUc: # 0x80325028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    clrlwi  r31, r5, 24
    cmplwi  r31, 0x8
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    bge-    branch_0x803250cc
    lfs     f31, 0x4(r30)
    bl      JPAGetEmitterInfoPtr__Fv
    stfs    f31, 0x15c(r3)
    lfs     f31, 0x8(r30)
    bl      JPAGetEmitterInfoPtr__Fv
    mulli   r4, r31, 0xc
    stfs    f31, 0x160(r3)
    add     r3, r29, r4
    lwz     r0, 0x4c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803250cc
    addi    r0, r4, 0x44
    lwzx    r31, r29, r0
    b       branch_0x803250c4

branch_0x80325090:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x11c(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x803250a8
    li      r0, 0x1
    b       branch_0x803250ac

branch_0x803250a8:
    li      r0, 0x0
branch_0x803250ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x803250c0
    lwz     r4, 0x0(r30)
    addi    r3, r3, 0x30
    bl      draw__7JPADrawFPA4_f
branch_0x803250c0:
    lwz     r31, 0xc(r31)
branch_0x803250c4:
    cmplwi  r31, 0x0
    bne+    branch_0x80325090
branch_0x803250cc:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_: # 0x803250ec
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x8
    stwu    sp, -0xc8(sp)
    stmw    r21, 0x9c(sp)
    addi    r28, r5, 0x0
    addi    r25, r3, 0x0
    addi    r26, r7, 0x0
    addi    r27, r8, 0x0
    blt-    branch_0x80325120
    li      r3, 0x0
    b       branch_0x80325284

branch_0x80325120:
    clrlslwi  r0, r6, 24, 2
    add     r30, r25, r0
    lwzu    r3, 0xa4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80325280
    lwz     r3, 0x4(r3)
    clrlwi  r4, r4, 16
    bl      getByUserIndex__18JPAEmitterResourceFUs
    cmplwi  r3, 0x0
    bne-    branch_0x80325150
    li      r3, 0x0
    b       branch_0x80325284

branch_0x80325150:
    lwz     r3, 0x0(r3)
    li      r31, 0x0
    lwz     r0, 0x1c(r25)
    lwz     r29, 0x0(r3)
    cmplwi  r0, 0x0
    lwz     r23, 0x0(r29)
    beq-    branch_0x803251b4
    lwz     r4, 0x14(r25)
    addi    r3, r25, 0x14
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    beq-    branch_0x80325190
    mr      r3, r31
    bl      __ct__14JPABaseEmitterFv
branch_0x80325190:
    clrlwi  r0, r28, 24
    mulli   r3, r0, 0xc
    addi    r3, r3, 0x44
    addi    r4, r31, 0x0
    add     r3, r25, r3
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r3, r31, 0x0
    addi    r4, r23, 0x0
    bl      loadBaseEmitterBlock__14JPABaseEmitterFP12JPADataBlock
branch_0x803251b4:
    cmplwi  r31, 0x0
    beq-    branch_0x80325278
    stb     r28, 0x173(r31)
    li      r3, 0xff
    addi    r0, r25, 0x28
    stw     r25, 0x10c(r31)
    addi    r23, r31, 0x20
    li      r28, 0x0
    stb     r3, 0x180(r31)
    li      r25, 0x0
    stb     r3, 0x181(r31)
    stb     r3, 0x182(r31)
    stb     r3, 0x184(r31)
    stb     r3, 0x185(r31)
    stb     r3, 0x186(r31)
    stb     r3, 0x183(r31)
    stw     r0, 0x2c(r31)
    lbz     r22, 0x20(r29)
    lwz     r24, 0x18(r29)
    b       branch_0x80325234

branch_0x80325204:
    lwzx    r5, r24, r25
    mr      r3, r23
    lwz     r4, 0x4(r5)
    mr      r21, r5
    lbz     r4, 0xc(r4)
    bl      setField__15JPAFieldManagerFUc
    cmplwi  r3, 0x0
    beq-    branch_0x8032522c
    mr      r4, r21
    bl      loadFieldBlock__12JPABaseFieldFP12JPADataBlock
branch_0x8032522c:
    addi    r28, r28, 0x1
    addi    r25, r25, 0x4
branch_0x80325234:
    cmpw    r28, r22
    blt+    branch_0x80325204
    stw     r29, 0x118(r31)
    lwz     r0, 0xc(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80325254
    li      r0, 0x1
    stb     r0, 0x172(r31)
branch_0x80325254:
    mr      r3, r31
    bl      calcCurrentRateTimerStep__14JPABaseEmitterFv
    lwz     r4, 0x0(r30)
    addi    r3, r31, 0x30
    lwz     r5, 0x8(r4)
    mr      r4, r31
    bl      initialize__7JPADrawFP14JPABaseEmitterP18JPATextureResource
    stw     r26, 0x110(r31)
    stw     r27, 0x114(r31)
branch_0x80325278:
    mr      r3, r31
    b       branch_0x80325284

branch_0x80325280:
    li      r3, 0x0
branch_0x80325284:
    lmw     r21, 0x9c(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_: # 0x80325298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    addi    r5, r6, 0x0
    addi    r6, r7, 0x0
    addi    r7, r8, 0x0
    addi    r8, r9, 0x0
    bl      createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    cmplwi  r3, 0x0
    beq-    branch_0x803252e8
    lfs     f0, 0x0(r31)
    stfs    f0, 0x160(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x164(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x168(r3)
    b       branch_0x803252ec

branch_0x803252e8:
    li      r3, 0x0
branch_0x803252ec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_: # 0x80325300
    mflr    r0
    addi    r8, r7, 0x0
    stw     r0, 0x4(sp)
    addi    r7, r6, 0x0
    li      r6, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    li      r5, 0x0
    bl      createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    cmplwi  r3, 0x0
    beq-    branch_0x8032535c
    lfs     f0, 0x0(r31)
    mr      r4, r3
    stfs    f0, 0x160(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x164(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x168(r3)
    b       branch_0x80325360

branch_0x8032535c:
    li      r4, 0x0
branch_0x80325360:
    cmplwi  r4, 0x0
    beq-    branch_0x8032537c
    li      r0, 0x1
    stw     r0, 0xc4(r30)
    li      r3, 0x1
    stw     r4, 0xc8(r30)
    b       branch_0x80325380

branch_0x8032537c:
    li      r3, 0x0
branch_0x80325380:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl deleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
deleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter: # 0x80325398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    addi    r0, r31, 0x20
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    mr      r3, r0
    bl      deleteAllField__15JPAFieldManagerFv
    lbz     r0, 0x173(r31)
    addi    r4, r31, 0x0
    mulli   r3, r0, 0xc
    addi    r3, r3, 0x44
    add     r3, r30, r3
    bl      remove__10JSUPtrListFP10JSUPtrLink
    addi    r4, r31, 0x0
    addi    r3, r30, 0x14
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter: # 0x803253fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      deleteAllParticle__14JPABaseEmitterFv
    addi    r3, r31, 0x20
    bl      deleteAllField__15JPAFieldManagerFv
    lbz     r0, 0x173(r31)
    addi    r4, r31, 0x0
    mulli   r3, r0, 0xc
    addi    r3, r3, 0x44
    add     r3, r30, r3
    bl      remove__10JSUPtrListFP10JSUPtrLink
    addi    r4, r31, 0x0
    addi    r3, r30, 0x14
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr

