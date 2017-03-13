
.globl __dt__14TFileLoadBlockFv
__dt__14TFileLoadBlockFv: # 0x801eed9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801eee04
    lis     r3, 0x803d
    addi    r3, r3, 0x4990
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801eedf4
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801eedf4:
    extsh.  r0, r31
    ble-    branch_0x801eee04
    mr      r3, r30
    bl      __dl__FPv
branch_0x801eee04:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMapObjOptionWallFPCc
__ct__17TMapObjOptionWallFPCc: # 0x801eee20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x4af4
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


.globl init__17TMapObjOptionWallFv
init__17TMapObjOptionWallFv: # 0x801eee6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x68
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801eee9c
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x801eee9c:
    stw     r30, 0x68(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x39c8
    lwz     r3, 0x68(r31)
    li      r5, 0x0
    li      r6, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl offCollision__17TMapObjOptionWallFv
offCollision__17TMapObjOptionWallFv: # 0x801eeedc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl onCollision__17TMapObjOptionWallFv
onCollision__17TMapObjOptionWallFv: # 0x801eef0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__14TFileLoadBlockFPCc
__ct__14TFileLoadBlockFPCc: # 0x801eef3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x4990
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    lfs     f0, -0x21c0(rtoc)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__14TFileLoadBlockFv
initMapObj__14TFileLoadBlockFv: # 0x801eefa0
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x38d0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      initMapObj__11TMapObjBaseFv
    lwz     r4, 0xf4(r29)
    addi    r3, r31, 0x118
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801eefe8
    li      r0, 0x0
    stb     r0, 0x138(r29)
    b       branch_0x801ef024

branch_0x801eefe8:
    lwz     r4, 0xf4(r29)
    addi    r3, r31, 0x128
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ef008
    li      r0, 0x1
    stb     r0, 0x138(r29)
    b       branch_0x801ef024

branch_0x801ef008:
    lwz     r4, 0xf4(r29)
    addi    r3, r31, 0x138
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ef024
    li      r0, 0x2
    stb     r0, 0x138(r29)
branch_0x801ef024:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x6e
    lbz     r0, 0x6e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ef054
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x148
    li      r5, 0x6e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801ef054:
    lfs     f2, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x144(r29)
    stfs    f1, 0x148(r29)
    stfs    f2, 0x14c(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl loadAfter__14TFileLoadBlockFv
loadAfter__14TFileLoadBlockFv: # 0x801ef088
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa8(sp)
    addi    r30, r4, 0x38d0
    stw     r29, 0xa4(sp)
    bl      loadAfter__11TMapObjBaseFv
    lbz     r0, 0x138(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801ef120
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x16c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x16c
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r3, r30, 0x180
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x180
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
    b       branch_0x801ef1ec

branch_0x801ef120:
    cmplwi  r0, 0x1
    bne-    branch_0x801ef18c
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x194
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x194
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r3, r30, 0x180
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x180
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
    b       branch_0x801ef1ec

branch_0x801ef18c:
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x194
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x194
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r3, r30, 0x16c
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x16c
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
branch_0x801ef1ec:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl receiveMessage__14TFileLoadBlockFP9THitActorUl
receiveMessage__14TFileLoadBlockFP9THitActorUl: # 0x801ef208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801ef230
    li      r0, 0x1
    b       branch_0x801ef234

branch_0x801ef230:
    li      r0, 0x0
branch_0x801ef234:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ef2e4
    cmplwi  r5, 0x2
    bne-    branch_0x801ef2e4
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ef258
    li      r0, 0x1
    b       branch_0x801ef25c

branch_0x801ef258:
    li      r0, 0x0
branch_0x801ef25c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ef2e4
    lis     r3, 0x8039
    addi    r4, r3, 0x3a78
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r3, -0x63e0(r13)
    lbz     r4, 0x138(r31)
    bl      setSelected__9TCardLoadFUc
    lwz     r3, -0x60f0(r13)
    li      r4, 0x15
    lwz     r5, -0x7840(r13)
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x144
    li      r4, 0x6e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x144
    li      r4, 0x39
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x78
    stw     r0, 0x104(r31)
    li      r3, 0x1
    lwz     r4, 0x13c(r31)
    stw     r0, 0x104(r4)
    lwz     r4, 0x140(r31)
    stw     r0, 0x104(r4)
    b       branch_0x801ef2e8

branch_0x801ef2e4:
    li      r3, 0x0
branch_0x801ef2e8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl touchPlayer__14TFileLoadBlockFP9THitActor
touchPlayer__14TFileLoadBlockFP9THitActor: # 0x801ef2fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801ef324
    li      r0, 0x1
    b       branch_0x801ef328

branch_0x801ef324:
    li      r0, 0x0
branch_0x801ef328:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ef3d8
    mr      r3, r31
    bl      marioHeadAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801ef3d8
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ef354
    li      r0, 0x1
    b       branch_0x801ef358

branch_0x801ef354:
    li      r0, 0x0
branch_0x801ef358:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ef3d8
    lis     r3, 0x8039
    addi    r4, r3, 0x3a78
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r3, -0x63e0(r13)
    lbz     r4, 0x138(r31)
    bl      setSelected__9TCardLoadFUc
    lwz     r3, -0x60f0(r13)
    li      r4, 0x15
    lwz     r5, -0x7840(r13)
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x144
    li      r4, 0x6e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x144
    li      r4, 0x39
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x78
    stw     r0, 0x104(r31)
    lwz     r3, 0x13c(r31)
    stw     r0, 0x104(r3)
    lwz     r3, 0x140(r31)
    stw     r0, 0x104(r3)
branch_0x801ef3d8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl makeBlockRock__14TFileLoadBlockFv
makeBlockRock__14TFileLoadBlockFv: # 0x801ef3ec
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeBlockNormal__14TFileLoadBlockFv
makeBlockNormal__14TFileLoadBlockFv: # 0x801ef424
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TMapObjOptionWallFv
__dt__17TMapObjOptionWallFv: # 0x801ef45c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ef4c4
    lis     r3, 0x803d
    addi    r3, r3, 0x4af4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ef4b4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801ef4b4:
    extsh.  r0, r31
    ble-    branch_0x801ef4c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ef4c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjOption_cpp
__sinit_MapObjOption_cpp: # 0x801ef4e0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x59b8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef528
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801ef528:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef558
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801ef558:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef588
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801ef588:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef5b8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801ef5b8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef5e8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801ef5e8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef618
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801ef618:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef648
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801ef648:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef678
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801ef678:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef6a8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801ef6a8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef6d8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801ef6d8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef708
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801ef708:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef738
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801ef738:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef768
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801ef768:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef798
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801ef798:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef7c8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801ef7c8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TMapObjOptionWallFv
_32___dt__17TMapObjOptionWallFv: # 0x801ef7dc
    subi    r3, r3, 0x20
    b       __dt__17TMapObjOptionWallFv


.globl _32___dt__14TFileLoadBlockFv
_32___dt__14TFileLoadBlockFv: # 0x801ef7e4
    subi    r3, r3, 0x20
    b       __dt__14TFileLoadBlockFv

