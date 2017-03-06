
.globl __dt__11TMewManagerFv
__dt__11TMewManagerFv: # 0x80009ca8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009d00
    lis     r3, 0x803b
    subi    r0, r3, 0x4378
    stw     r0, 0x0(r30)
    beq-    branch_0x80009cf0
    lis     r3, 0x803b
    subi    r0, r3, 0x4324
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80009cf0:
    extsh.  r0, r31
    ble-    branch_0x80009d00
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009d00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__11TMewManagerFv
createModelData__11TMewManagerFv: # 0x80009d1c
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3718
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__11TMewManagerFv
loadAfter__11TMewManagerFv: # 0x80009d50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0x14(r31)
    li      r3, 0x3813
    clrlwi  r4, r0, 16
    bl      createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__11TMewManagerFR20JSUMemoryInputStream
load__11TMewManagerFR20JSUMemoryInputStream: # 0x80009d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80009dc8
    lis     r3, 0x8037
    addi    r4, r3, 0x3730
    addi    r3, r30, 0x0
    bl      __ct__21TAnimalSaveIndividualFPCc
branch_0x80009dc8:
    stw     r30, 0x5c(r31)
    lwz     r3, 0x5c(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x54(r31)
    lwz     r3, 0x5c(r31)
    addi    r0, r3, 0x40
    stw     r0, 0x58(r31)
    lwz     r3, 0x5c(r31)
    lfs     f0, 0x54(r3)
    stfs    f0, 0x3c(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl clipEnemies__18TAnimalManagerBaseFPQ26JDrama9TGraphics
clipEnemies__18TAnimalManagerBaseFPQ26JDrama9TGraphics: # 0x80009e08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stmw    r26, 0x38(sp)
    mr      r27, r3
    mr      r28, r4
    lwz     r5, -0x7118(r13)
    lfs     f3, 0x54(r3)
    lwz     r3, 0x58(r3)
    lfs     f2, 0x4c(r5)
    lfs     f1, 0x48(r5)
    lfs     f4, 0x0(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    lwz     r31, 0x14(r27)
    li      r29, 0x0
    lfs     f31, -0x7f00(rtoc)
    li      r26, 0x0
    b       branch_0x80009ee8

branch_0x80009e54:
    lwz     r3, 0x18(r27)
    lwzx    r30, r3, r26
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x2c(sp)
    lfs     f0, 0x28(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x28(sp)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80009eac
    addi    r3, sp, 0x24
    bl      SMS_IsInOtherFastCube__FRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x80009eac
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
    b       branch_0x80009ee0

branch_0x80009eac:
    lfs     f1, 0x3c(r27)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x80009ed4
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r30)
    b       branch_0x80009ee0

branch_0x80009ed4:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r30)
branch_0x80009ee0:
    addi    r29, r29, 0x1
    addi    r26, r26, 0x4
branch_0x80009ee8:
    cmpw    r29, r31
    blt+    branch_0x80009e54
    lmw     r26, 0x38(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__18TAnimalManagerBaseFPCc
__ct__18TAnimalManagerBaseFPCc: # 0x80009f08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x4324
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    lfs     f0, -0x7efc(rtoc)
    stfs    f0, 0x54(r31)
    stw     r0, 0x58(r31)
    stw     r0, 0x5c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TAnimalManagerBaseFv
__dt__18TAnimalManagerBaseFv: # 0x80009f58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80009fa0
    lis     r3, 0x803b
    subi    r0, r3, 0x4324
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x80009fa0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80009fa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_AnimalManager_cpp
__sinit_AnimalManager_cpp: # 0x80009fbc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x67e8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a004
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8000a004:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a034
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8000a034:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a064
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8000a064:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a094
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8000a094:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a0c4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8000a0c4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a0f4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8000a0f4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a124
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8000a124:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a154
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8000a154:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a184
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8000a184:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a1b4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8000a1b4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a1e4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8000a1e4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a214
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8000a214:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a244
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8000a244:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a274
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8000a274:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8000a2a4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8000a2a4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
