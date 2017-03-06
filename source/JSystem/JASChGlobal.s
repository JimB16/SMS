
.globl getChannelHandle__Q28JASystem8ChGlobalFUl
getChannelHandle__Q28JASystem8ChGlobalFUl: # 0x80313c54
    cmplwi  r3, 0x100
    blt-    branch_0x80313c64
    li      r3, 0x0
    blr

branch_0x80313c64:
    mulli   r0, r3, 0xe0
    lwz     r3, -0x5c34(r13)
    add     r3, r3, r0
    blr


.globl init__Q28JASystem8ChGlobalFv
init__Q28JASystem8ChGlobalFv: # 0x80313c74
    mflr    r0
    li      r3, 0x74
    stw     r0, 0x4(sp)
    li      r5, 0x20
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    lwz     r4, -0x5b30(r13)
    bl      __nw__FUlP7JKRHeapi
    mr      r31, r3
    stw     r31, -0x5c38(r13)
    bl      init__Q28JASystem11TChannelMgrFv
    lis     r29, 0x1
    lwz     r4, -0x5b30(r13)
    subi    r3, r29, 0x1ff8
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    lis     r5, 0x8031
    addi    r4, r4, 0x3e4c
    addi    r5, r5, 0x3e0c
    li      r6, 0xe0
    li      r7, 0x100
    bl      __construct_new_array
    stw     r3, -0x5c34(r13)
    subi    r3, r29, 0x7ff8
    lwz     r4, -0x5b30(r13)
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    lis     r5, 0x8031
    addi    r4, r4, 0x3ddc
    addi    r5, r5, 0x3d9c
    li      r6, 0x20
    li      r7, 0x400
    bl      __construct_new_array
    stw     r3, -0x5c30(r13)
    li      r28, 0x0
    li      r30, 0x0
    li      r29, 0x0
branch_0x80313d10:
    li      r27, 0x0
branch_0x80313d14:
    add     r0, r27, r29
    lwz     r3, -0x5c34(r13)
    lwz     r5, -0x5c30(r13)
    slwi    r0, r0, 5
    addi    r4, r27, 0x0
    add     r3, r3, r30
    add     r5, r5, r0
    bl      setOscillator__Q28JASystem8TChannelFUlPQ28JASystem11TOscillator
    addi    r27, r27, 0x1
    cmplwi  r27, 0x4
    blt+    branch_0x80313d14
    lwz     r0, -0x5c34(r13)
    add     r3, r0, r30
    bl      init__Q28JASystem8TChannelFv
    lwz     r0, -0x5c34(r13)
    addi    r3, r31, 0x0
    li      r5, 0x0
    add     r4, r0, r30
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    addi    r28, r28, 0x1
    lwz     r3, -0x5c34(r13)
    addi    r0, r30, 0x4
    cmpwi   r28, 0x100
    stwx    r31, r3, r0
    addi    r30, r30, 0xe0
    addi    r29, r29, 0x4
    blt+    branch_0x80313d10
    li      r0, 0x100
    stw     r0, 0x0(r31)
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__Q28JASystem11TOscillatorFv
__dt__Q28JASystem11TOscillatorFv: # 0x80313d9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80313dc4
    extsh.  r0, r4
    ble-    branch_0x80313dc4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80313dc4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q28JASystem11TOscillatorFv
__ct__Q28JASystem11TOscillatorFv: # 0x80313ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__Q28JASystem11TOscillatorFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__Q28JASystem8TChannelFv
__dt__Q28JASystem8TChannelFv: # 0x80313e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80313e34
    extsh.  r0, r4
    ble-    branch_0x80313e34
    mr      r3, r31
    bl      __dl__FPv
branch_0x80313e34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q28JASystem8TChannelFv
__ct__Q28JASystem8TChannelFv: # 0x80313e4c
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r0, 0x40(r3)
    stw     r0, 0x44(r3)
    blr


.globl alloc__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgrUl
alloc__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgrUl: # 0x80313e74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    b       branch_0x80313ed4

branch_0x80313ea0:
    lwz     r3, -0x5c38(r13)
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r30, r3
    beq-    branch_0x80313edc
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    stw     r28, 0x4(r30)
    mr      r3, r30
    bl      init__Q28JASystem8TChannelFv
    addi    r31, r31, 0x1
branch_0x80313ed4:
    cmplw   r31, r29
    blt+    branch_0x80313ea0
branch_0x80313edc:
    lwz     r0, 0x0(r28)
    addi    r3, r31, 0x0
    add     r0, r0, r31
    stw     r0, 0x0(r28)
    lwz     r4, -0x5c38(r13)
    lwz     r0, 0x0(r4)
    subf    r0, r31, r0
    stw     r0, 0x0(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl release__Q28JASystem8ChGlobalFPQ28JASystem8TChannel
release__Q28JASystem8ChGlobalFPQ28JASystem8TChannel: # 0x80313f1c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r4, r31, 0x0
    lwz     r3, -0x5c38(r13)
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r5, 0x4(r31)
    li      r3, 0x0
    lwz     r4, 0x0(r5)
    subi    r0, r4, 0x1
    stw     r0, 0x0(r5)
    lwz     r5, -0x5c38(r13)
    lwz     r4, 0x0(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, -0x5c38(r13)
    stw     r0, 0x4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl releaseAll__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgr
releaseAll__Q28JASystem8ChGlobalFPQ28JASystem11TChannelMgr: # 0x80313f80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
branch_0x80313f9c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r29, r3
    beq-    branch_0x80313fcc
    lwz     r3, -0x5c38(r13)
    addi    r4, r29, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r0, -0x5c38(r13)
    stw     r0, 0x4(r29)
    b       branch_0x80313f9c

branch_0x80313fcc:
    li      r30, 0x1
branch_0x80313fd0:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r29, r3
    beq-    branch_0x80314004
    lwz     r3, -0x5c38(r13)
    addi    r4, r29, 0x0
    li      r5, 0x1
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r0, -0x5c38(r13)
    stw     r0, 0x4(r29)
    stw     r30, 0xd0(r29)
    b       branch_0x80313fd0

branch_0x80314004:
    li      r30, 0x1
branch_0x80314008:
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r29, r3
    beq-    branch_0x8031403c
    lwz     r3, -0x5c38(r13)
    addi    r4, r29, 0x0
    li      r5, 0x2
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    lwz     r0, -0x5c38(r13)
    stw     r0, 0x4(r29)
    stw     r30, 0xd0(r29)
    b       branch_0x80314008

branch_0x8031403c:
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      getListHead__Q28JASystem11TChannelMgrFUl
    mr.     r30, r3
    beq-    branch_0x80314090
    mr      r3, r30
    bl      deleteQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel
    cmpwi   r3, 0x0
    beq-    branch_0x80314074
    lwz     r3, -0x5c38(r13)
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    b       branch_0x80314084

branch_0x80314074:
    lwz     r3, -0x5c38(r13)
    addi    r4, r30, 0x0
    li      r5, 0x3
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80314084:
    lwz     r0, -0x5c38(r13)
    stw     r0, 0x4(r30)
    b       branch_0x8031403c

branch_0x80314090:
    lwz     r6, -0x5c38(r13)
    li      r0, 0x0
    lwz     r4, 0x0(r31)
    li      r3, 0x0
    lwz     r5, 0x0(r6)
    add     r4, r5, r4
    stw     r4, 0x0(r6)
    stw     r0, 0x0(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

