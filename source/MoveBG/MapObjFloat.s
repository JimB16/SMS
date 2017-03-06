
.globl __dt__17TMapObjFloatOnSeaFv
__dt__17TMapObjFloatOnSeaFv: # 0x801ddd50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dddd0
    lis     r3, 0x803d
    addi    r3, r3, 0x2058
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dddc0
    lis     r3, 0x803d
    subi    r3, r3, 0x43d4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dddc0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dddc0:
    extsh.  r0, r31
    ble-    branch_0x801dddd0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dddd0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMapObjFloatOnSeaFPCc
__ct__17TMapObjFloatOnSeaFPCc: # 0x801dddec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__10TLeanBlockFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x2058
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x2498(rtoc)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1ac(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__17TMapObjFloatOnSeaFv
initMapObj__17TMapObjFloatOnSeaFv: # 0x801dde54
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r28, r4, 0x2580
    bl      initMapObj__10TLeanBlockFv
    li      r30, 0x0
    b       branch_0x801dde80

branch_0x801dde7c:
    addi    r30, r30, 0x2c
branch_0x801dde80:
    add     r29, r28, r30
    lwz     r4, 0xf4(r31)
    lwz     r3, 0x158(r29)
    bl      strcmp
    cmpwi   r3, 0x0
    bne+    branch_0x801dde7c
    lfs     f0, 0x15c(r29)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stfs    f0, 0x140(r31)
    li      r0, 0xf
    addi    r27, r3, 0x1f6
    lfs     f0, 0x160(r29)
    stfs    f0, 0x144(r31)
    lfs     f0, 0x164(r29)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x168(r29)
    stfs    f0, 0x138(r31)
    lfs     f0, 0x16c(r29)
    stfs    f0, 0x13c(r31)
    stw     r0, 0x198(r31)
    lfs     f0, 0x180(r29)
    stfs    f0, 0x1ac(r31)
    lbz     r0, 0x1f6(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ddf00
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x368
    li      r5, 0x1f6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ddf00:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1c6
    lbz     r0, 0x1c6(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ddf30
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x38c
    li      r5, 0x1c6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ddf30:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801ddf5c
    add     r4, r28, r30
    lfs     f1, 0x170(r4)
    mr      r3, r27
    lfs     f2, 0x174(r4)
    lfs     f3, 0x178(r4)
    lfs     f4, 0x17c(r4)
    bl      __ct__14TMapObjLibWaveFffff
branch_0x801ddf5c:
    stw     r27, 0x194(r31)
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calc__17TMapObjFloatOnSeaFv
calc__17TMapObjFloatOnSeaFv: # 0x801ddf74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lfs     f0, 0x10(r3)
    stfs    f0, 0x1a0(r3)
    lfs     f0, -0x2498(rtoc)
    stfs    f0, 0x1a4(r3)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x1a8(r3)
    lwz     r3, 0x19c(r3)
    lwz     r0, 0x198(r31)
    cmpw    r3, r0
    ble-    branch_0x801ddffc
    lfs     f0, 0x1ac(r31)
    addi    r3, r31, 0x0
    addi    r6, r31, 0x1a0
    stfs    f0, 0x14(sp)
    addi    r7, sp, 0x14
    li      r4, 0x1f6
    stfs    f0, 0x18(sp)
    li      r5, 0x3
    stfs    f0, 0x1c(sp)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x1a0
    addi    r7, sp, 0x14
    li      r4, 0x1c6
    li      r5, 0x1
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r0, 0x0
    stw     r0, 0x19c(r31)
    b       branch_0x801de004

branch_0x801ddffc:
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
branch_0x801de004:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl control__17TMapObjFloatOnSeaFv
control__17TMapObjFloatOnSeaFv: # 0x801de018
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      control__10TLeanBlockFv
    lwz     r3, 0x194(r30)
    bl      movement__14TMapObjLibWaveFv
    lbz     r0, -0x6264(r13)
    extsb.  r0, r0
    bne-    branch_0x801de058
    lfs     f0, -0x2498(rtoc)
    li      r0, 0x1
    stb     r0, -0x6264(r13)
    stfs    f0, -0x6268(r13)
branch_0x801de058:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    lwz     r3, 0x194(r30)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x18(r30)
    bl      getCurrentHeight__14TMapObjLibWaveCFff
    lfs     f0, 0x1c(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x1c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchPlayer__17TMapObjFloatOnSeaFP9THitActor
touchPlayer__17TMapObjFloatOnSeaFP9THitActor: # 0x801de098
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      touchPlayer__10TLeanBlockFP9THitActor
    mr      r3, r31
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801de0c8
    lwz     r3, 0x194(r31)
    bl      push__14TMapObjLibWaveFv
branch_0x801de0c8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MapObjFloat_cpp
__sinit_MapObjFloat_cpp: # 0x801de0dc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6278
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801de124
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801de124:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801de154
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801de154:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801de184
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801de184:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801de1b4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801de1b4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801de1e4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801de1e4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801de214
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801de214:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801de244
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801de244:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801de274
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801de274:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801de2a4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801de2a4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801de2d4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801de2d4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801de304
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801de304:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801de334
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801de334:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801de364
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801de364:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801de394
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801de394:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801de3c4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801de3c4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TMapObjFloatOnSeaFv
_32___dt__17TMapObjFloatOnSeaFv: # 0x801de3d8
    subi    r3, r3, 0x20
    b       __dt__17TMapObjFloatOnSeaFv

