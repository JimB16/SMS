
.globl __dt__7TSunMgrFv
__dt__7TSunMgrFv: # 0x8002e1f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8002e254
    lis     r3, 0x803b
    subi    r3, r3, 0x2ea0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x10(r30)
    beq-    branch_0x8002e244
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8002e244:
    extsh.  r0, r31
    ble-    branch_0x8002e254
    mr      r3, r30
    bl      __dl__FPv
branch_0x8002e254:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl drawSyncCallback__7TSunMgrFUs
drawSyncCallback__7TSunMgrFUs: # 0x8002e270
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8002e290
    lwz     r3, gpSunModel(r13)
    bl      getZBufValue__9TSunModelFv
branch_0x8002e290:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getAddColor__7TSunMgrCFv
getAddColor__7TSunMgrCFv: # 0x8002e2a0
    stwu    sp, -0x20(sp)
    lbz     r0, 0x14(r3)
    li      r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8002e2c8
    lwz     r3, gpSunModel(r13)
    lfs     f0, 0xac(r3)
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
branch_0x8002e2c8:
    addi    sp, sp, 0x20
    blr


.globl perform__7TSunMgrFUlPQ26JDrama9TGraphics
perform__7TSunMgrFUlPQ26JDrama9TGraphics: # 0x8002e2d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    mr      r29, r3
    lbz     r0, 0x15(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8002e460
    clrlwi. r0, r4, 31
    beq-    branch_0x8002e460
    lhz     r0, 0x0(r5)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8002e460
    lwz     r31, gpCamera(r13)
    li      r30, 0x0
    lwz     r4, 0x50(r31)
    mr      r3, r31
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8002e33c
    mr      r3, r31
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8002e33c
    li      r30, 0x1
branch_0x8002e33c:
    clrlwi. r0, r30, 24
    beq-    branch_0x8002e34c
    li      r0, 0x1
    b       branch_0x8002e350

branch_0x8002e34c:
    li      r0, 0x0
branch_0x8002e350:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002e460
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x2c(r29)
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    fsubs   f3, f1, f0
    lfs     f1, 0x24(r29)
    lfs     f0, -0x76a8(rtoc)
    fsubs   f2, f2, f1
    fmuls   f1, f3, f3
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8002e460
    lwz     r3, gpSunModel(r13)
    li      r4, 0x0
    lfs     f0, -0x76a4(rtoc)
    mr      r5, r4
    lfsu    f1, 0xf8(r3)
    mr      r0, r4
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8002e3c0
    lfs     f0, -0x76a0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002e3c0
    li      r0, 0x1
branch_0x8002e3c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002e3e0
    lfs     f1, -0x76a4(rtoc)
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002e3e0
    li      r5, 0x1
branch_0x8002e3e0:
    clrlwi. r0, r5, 24
    beq-    branch_0x8002e400
    lfs     f1, 0x4(r3)
    lfs     f0, -0x76a0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8002e400
    li      r4, 0x1
branch_0x8002e400:
    clrlwi. r0, r4, 24
    beq-    branch_0x8002e410
    li      r0, 0x1
    b       branch_0x8002e414

branch_0x8002e410:
    li      r0, 0x0
branch_0x8002e414:
    clrlwi. r0, r0, 24
    beq-    branch_0x8002e460
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x9
    li      r5, 0x0
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    lwz     r30, gpMSound(r13)
    lwz     r3, 0x7c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8002e460
    lfs     f1, -0x769c(rtoc)
    li      r4, 0x64
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
    lwz     r3, 0x7c(r30)
    li      r4, 0x64
    lfs     f1, -0x7698(rtoc)
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
branch_0x8002e460:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl load__7TSunMgrFR20JSUMemoryInputStream
load__7TSunMgrFR20JSUMemoryInputStream: # 0x8002e47c
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r5, 0x5730
    stw     r30, 0xa8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xa4(sp)
    addi    r29, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, sp, 0x8c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x90
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x94
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x98
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x8c(sp)
    addi    r3, r31, 0x50
    lwz     r0, 0x90(sp)
    slwi    r4, r4, 8
    lwz     r6, 0x94(sp)
    lwz     r5, 0x98(sp)
    or      r0, r4, r0
    slwi    r4, r6, 8
    stw     r0, 0x18(r30)
    or      r0, r4, r5
    stw     r0, 0x1c(r30)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x50
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8002e560
    li      r0, 0x1
    stb     r0, 0x14(r30)
    b       branch_0x8002e5a8

branch_0x8002e560:
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x5c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x5c
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8002e5a8
    li      r0, 0x1
    stb     r0, 0x14(r30)
    lbz     r0, 0x15(r30)
    ori     r0, r0, 0x2
    stb     r0, 0x15(r30)
branch_0x8002e5a8:
    lbz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8002e628
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8002e628
    lis     r4, 0x5
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x4
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8002e628
    lbz     r0, 0x15(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x15(r30)
    lwz     r29, -0x7fa0(r13)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, -0x6000(r13)
    mr      r5, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r4, 0xc(r3)
    lwz     r0, 0x10(r3)
    stw     r4, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0x14(r3)
    stw     r0, 0x2c(r30)
branch_0x8002e628:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl __ct__7TSunMgrFPCc
__ct__7TSunMgrFPCc: # 0x8002e644
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r5, 0x0
    lis     r3, 0x803b
    sth     r5, 0xc(r31)
    subi    r0, r3, 0x2e6c
    lis     r3, 0x803b
    stw     r0, 0x10(r31)
    subi    r3, r3, 0x2ea0
    addi    r4, r3, 0x24
    stw     r3, 0x0(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r4, 0x10(r31)
    stb     r5, 0x14(r31)
    stb     r5, 0x15(r31)
    stw     r0, 0x18(r31)
    stw     r0, 0x1c(r31)
    lfs     f0, -0x769c(rtoc)
    stfs    f0, 0x20(r31)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stw     r31, gpSunManager(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_sunmgr_cpp
__sinit_sunmgr_cpp: # 0x8002e6ec
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x288
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e734
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8002e734:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e764
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8002e764:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e794
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8002e794:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e7c4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8002e7c4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e7f4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8002e7f4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e824
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8002e824:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e854
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8002e854:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e884
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8002e884:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e8b4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8002e8b4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e8e4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8002e8e4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e914
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8002e914:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e944
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8002e944:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e974
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8002e974:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e9a4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8002e9a4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8002e9d4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8002e9d4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _16_drawSyncCallback__7TSunMgrFUs
_16_drawSyncCallback__7TSunMgrFUs: # 0x8002e9e8
    subi    r3, r3, 0x10
    b       drawSyncCallback__7TSunMgrFUs

