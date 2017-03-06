
.globl __dt__9TMapEventFv
__dt__9TMapEventFv: # 0x8018edb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8018ee18
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    beq-    branch_0x8018ee08
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    beq-    branch_0x8018ee08
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8018ee08:
    extsh.  r0, r31
    ble-    branch_0x8018ee18
    mr      r3, r30
    bl      __dl__FPv
branch_0x8018ee18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl startControl__9TMapEventFv
startControl__9TMapEventFv: # 0x8018ee34
    li      r0, 0x2
    stw     r0, 0x18(r3)
    blr


.globl getBuilding__9TMapEventCFi
getBuilding__9TMapEventCFi: # 0x8018ee40
    lwz     r3, 0x1c(r3)
    slwi    r0, r4, 2
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    blr


.globl __ct__9TMapEventFPCc
__ct__9TMapEventFPCc: # 0x8018ee5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEventWatcherFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r31)
    li      r3, 0x1
    li      r0, 0x0
    stw     r3, 0x18(r31)
    mr      r3, r31
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13TEventWatcherFv
__dt__13TEventWatcherFv: # 0x8018eea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8018ef00
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    beq-    branch_0x8018eef0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8018eef0:
    extsh.  r0, r31
    ble-    branch_0x8018ef00
    mr      r3, r30
    bl      __dl__FPv
branch_0x8018ef00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__9TMapEventFR20JSUMemoryInputStream
load__9TMapEventFR20JSUMemoryInputStream: # 0x8018ef1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r3, -0x6328(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r0, 0x0(r3)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl perform__9TMapEventFUlPQ26JDrama9TGraphics
perform__9TMapEventFUlPQ26JDrama9TGraphics: # 0x8018ef5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x18(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8018ef84
    li      r0, 0x1
    b       branch_0x8018ef88

branch_0x8018ef84:
    li      r0, 0x0
branch_0x8018ef88:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018f034
    clrlwi. r0, r4, 31
    beq-    branch_0x8018f034
    cmplwi  r3, 0x1
    bne-    branch_0x8018efa8
    li      r0, 0x1
    b       branch_0x8018efac

branch_0x8018efa8:
    li      r0, 0x0
branch_0x8018efac:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018efe4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8018efe4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
branch_0x8018efe4:
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8018eff8
    li      r0, 0x1
    b       branch_0x8018effc

branch_0x8018eff8:
    li      r0, 0x0
branch_0x8018effc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018f034
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8018f034
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
branch_0x8018f034:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl finishControl__9TMapEventFv
finishControl__9TMapEventFv: # 0x8018f048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8018f080
    li      r0, 0x0
    stw     r0, 0x18(r31)
    b       branch_0x8018f088

branch_0x8018f080:
    li      r0, 0x1
    stw     r0, 0x18(r31)
branch_0x8018f088:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isFinishedAll__9TMapEventCFv
isFinishedAll__9TMapEventCFv: # 0x8018f09c
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018f0b0
    li      r0, 0x1
    b       branch_0x8018f0b4

branch_0x8018f0b0:
    li      r0, 0x0
branch_0x8018f0b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018f0c4
    li      r3, 0x1
    blr

branch_0x8018f0c4:
    li      r3, 0x0
    blr


.globl __sinit_MapEvent_cpp
__sinit_MapEvent_cpp: # 0x8018f0cc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7d50
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f114
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8018f114:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f144
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8018f144:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f174
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8018f174:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f1a4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8018f1a4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f1d4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8018f1d4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f204
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8018f204:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f234
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8018f234:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f264
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8018f264:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f294
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8018f294:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f2c4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8018f2c4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f2f4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8018f2f4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f324
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8018f324:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f354
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8018f354:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f384
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8018f384:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8018f3b4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8018f3b4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

