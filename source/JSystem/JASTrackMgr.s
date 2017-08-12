
.globl init__Q28JASystem8TrackMgrFii
init__Q28JASystem8TrackMgrFii: # 0x8031db84
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r31, r29, 0x0
    mulli   r3, r31, 0x3d0
    lwz     r4, R13Off_m0x5b30(r13)
    addi    r3, r3, 0x8
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, __ct__Q28JASystem6TTrackFv@ha
    lis     r5, __dt__Q28JASystem6TTrackFv@ha
    addi    r4, r4, __ct__Q28JASystem6TTrackFv@l
    addi    r5, r5, __dt__Q28JASystem6TTrackFv@l
    addi    r7, r31, 0x0
    li      r6, 0x3d0
    bl      __construct_new_array
    mr      r31, r29
    stw     r3, R13Off_m0x5b08(r13)
    mulli   r3, r31, 0x2c
    lwz     r4, R13Off_m0x5b30(r13)
    addi    r3, r3, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, __ct__Q38JASystem6TTrack11TOuterParamFv@ha
    addi    r4, r4, __ct__Q38JASystem6TTrack11TOuterParamFv@l
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x2c
    bl      __construct_new_array
    stw     r3, R13Off_m0x5b04(r13)
    slwi    r3, r29, 2
    lwz     r4, R13Off_m0x5b30(r13)
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5afc(r13)
    slwi    r31, r30, 2
    addi    r4, r31, 0x0
    lwz     r3, R13Off_m0x5afc(r13)
    bl      bzero__Q28JASystem4CalcFPvUl
    lwz     r4, R13Off_m0x5b30(r13)
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, R13Off_m0x5b00(r13)
    mr      r4, r31
    lwz     r3, R13Off_m0x5b00(r13)
    bl      bzero__Q28JASystem4CalcFPvUl
    stw     r29, R13Off_m0x5af4(r13)
    stw     r30, R13Off_m0x5af8(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__Q28JASystem6TTrackFv
__dt__Q28JASystem6TTrackFv: # 0x8031dc78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8031dcc0
    lis     r3, __dt__Q28JASystem11TOscillatorFv@h
    addi    r4, r3, __dt__Q28JASystem11TOscillatorFv@l
    addi    r3, r30, 0x33c
    li      r5, 0x20
    li      r6, 0x2
    bl      __destroy_arr
    extsh.  r0, r31
    ble-    branch_0x8031dcc0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8031dcc0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl handleToSeq__Q28JASystem8TrackMgrFUl
handleToSeq__Q28JASystem8TrackMgrFUl: # 0x8031dcdc
    lwz     r0, R13Off_m0x5af8(r13)
    cmplw   r3, r0
    blt-    branch_0x8031dcf0
    li      r3, 0x0
    blr

branch_0x8031dcf0:
    lwz     r4, R13Off_m0x5b00(r13)
    slwi    r0, r3, 2
    lwzx    r3, r4, r0
    blr


.globl reset__Q28JASystem8TrackMgrFv
reset__Q28JASystem8TrackMgrFv: # 0x8031dd00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stmw    r27, 0xc(sp)
    li      r28, 0x0
    li      r31, 0x0
    li      r30, 0x0
    li      r29, 0x0
    b       branch_0x8031dd68

branch_0x8031dd24:
    lwz     r0, R13Off_m0x5b08(r13)
    add     r27, r0, r29
    addi    r3, r27, 0x0
    bl      reset__Q28JASystem6TTrackFv
    lwz     r0, R13Off_m0x5b04(r13)
    add     r3, r0, r30
    bl      initExtBuffer__Q38JASystem6TTrack11TOuterParamFv
    lwz     r0, R13Off_m0x5b04(r13)
    addi    r3, r27, 0x0
    add     r4, r0, r30
    bl      assignExtBuffer__Q28JASystem6TTrackFPQ38JASystem6TTrack11TOuterParam
    lwz     r3, R13Off_m0x5afc(r13)
    addi    r29, r29, 0x3d0
    addi    r28, r28, 0x1
    stwx    r27, r3, r31
    addi    r31, r31, 0x4
    addi    r30, r30, 0x2c
branch_0x8031dd68:
    lwz     r3, R13Off_m0x5af4(r13)
    cmplw   r28, r3
    blt+    branch_0x8031dd24
    li      r0, 0x0
    stw     r3, R13Off_m0x5aec(r13)
    stw     r0, R13Off_m0x5ae4(r13)
    stw     r0, R13Off_m0x5ae8(r13)
    bl      initRegistTrack__Q28JASystem8TrackMgrFv
    lmw     r27, 0xc(sp)
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initRegistTrack__Q28JASystem8TrackMgrFv
initRegistTrack__Q28JASystem8TrackMgrFv: # 0x8031dd9c
    li      r0, 0x0
    stw     r0, R13Off_m0x5af0(r13)
    lis     r3, 0x8040
    stwu    r0, -0x1fc8(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x18(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x28(r3)
    stw     r0, 0x30(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0x40(r3)
    stw     r0, 0x48(r3)
    stw     r0, 0x50(r3)
    stw     r0, 0x58(r3)
    stw     r0, 0x60(r3)
    stw     r0, 0x68(r3)
    stw     r0, 0x70(r3)
    stw     r0, 0x78(r3)
    stw     r0, 0x80(r3)
    stw     r0, 0x88(r3)
    stw     r0, 0x90(r3)
    stw     r0, 0x98(r3)
    stw     r0, 0xa0(r3)
    stw     r0, 0xa8(r3)
    stw     r0, 0xb0(r3)
    stw     r0, 0xb8(r3)
    stw     r0, 0xc0(r3)
    stw     r0, 0xc8(r3)
    stw     r0, 0xd0(r3)
    stw     r0, 0xd8(r3)
    stw     r0, 0xe0(r3)
    stw     r0, 0xe8(r3)
    stw     r0, 0xf0(r3)
    stw     r0, 0xf8(r3)
    blr


.globl getNewTrack__Q28JASystem8TrackMgrFv
getNewTrack__Q28JASystem8TrackMgrFv: # 0x8031de2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lwz     r3, R13Off_m0x5aec(r13)
    cmplwi  r3, 0x0
    bne-    branch_0x8031de50
    li      r3, 0x0
    b       branch_0x8031dea0

branch_0x8031de50:
    lwz     r5, R13Off_m0x5ae8(r13)
    addi    r4, r3, -0x1
    lwz     r6, R13Off_m0x5afc(r13)
    slwi    r3, r5, 2
    lwz     r0, R13Off_m0x5af4(r13)
    lwzx    r31, r6, r3
    addi    r3, r5, 0x1
    stw     r3, R13Off_m0x5ae8(r13)
    lwz     r3, R13Off_m0x5ae8(r13)
    stw     r4, R13Off_m0x5aec(r13)
    cmplw   r3, r0
    bne-    branch_0x8031de88
    li      r0, 0x0
    stw     r0, R13Off_m0x5ae8(r13)
branch_0x8031de88:
    li      r0, 0x2
    stb     r0, 0x3c4(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setInnerMemory__Q28JASystem6TTrackFUc
    mr      r3, r31
branch_0x8031dea0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl allocNewRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
allocNewRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack: # 0x8031deb4
    lwz     r7, R13Off_m0x5b00(r13)
    li      r8, 0x0
    lwz     r5, R13Off_m0x5af8(r13)
    b       branch_0x8031dee8

branch_0x8031dec4:
    clrlwi  r4, r8, 24
    clrlslwi  r6, r8, 24, 2
    lwzx    r0, r7, r6
    cmplwi  r0, 0x0
    bne-    branch_0x8031dee4
    stwx    r3, r7, r6
    mr      r3, r4
    blr

branch_0x8031dee4:
    addi    r8, r8, 0x1
branch_0x8031dee8:
    clrlwi  r0, r8, 24
    cmpw    r0, r5
    blt+    branch_0x8031dec4
    li      r3, -0x1
    blr


.globl deAllocRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
deAllocRoot__Q28JASystem8TrackMgrFPQ28JASystem6TTrack: # 0x8031defc
    lwz     r7, R13Off_m0x5b00(r13)
    li      r8, 0x0
    lwz     r5, R13Off_m0x5af8(r13)
    b       branch_0x8031df34

branch_0x8031df0c:
    clrlwi  r4, r8, 24
    clrlslwi  r6, r8, 24, 2
    lwzx    r0, r7, r6
    cmplw   r0, r3
    bne-    branch_0x8031df30
    li      r0, 0x0
    stwx    r0, r7, r6
    mr      r3, r4
    blr

branch_0x8031df30:
    addi    r8, r8, 0x1
branch_0x8031df34:
    clrlwi  r0, r8, 24
    cmpw    r0, r5
    blt+    branch_0x8031df0c
    li      r3, -0x1
    blr


.globl registTrack__Q28JASystem8TrackMgrFUlPQ28JASystem6TTrack
registTrack__Q28JASystem8TrackMgrFUlPQ28JASystem6TTrack: # 0x8031df48
    lwz     r7, R13Off_m0x5af0(r13)
    lis     r5, sTrackList__Q28JASystem8TrackMgr@ha
    addi    r6, r5, sTrackList__Q28JASystem8TrackMgr@l
    cmplwi  r7, 0x0
    mtctr   r7
    li      r5, 0x0
    ble-    branch_0x8031df7c
branch_0x8031df64:
    addi    r0, r5, 0x4
    lwzx    r0, r6, r0
    cmplw   r3, r0
    beqlr-    

    addi    r5, r5, 0x8
    bdnz+      branch_0x8031df64
branch_0x8031df7c:
    cmplwi  r7, 0x20
    bne-    branch_0x8031e044
    li      r0, 0x4
    mtctr   r0
    li      r7, 0x0
    li      r5, 0x0
branch_0x8031df94:
    lwzx    r0, r6, r5
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r5, r5, 0x8
    lwzx    r0, r6, r5
    addi    r7, r7, 0x1
    cmplwi  r0, 0x0
    beq-    branch_0x8031e038
    addi    r7, r7, 0x1
    addi    r5, r5, 0x8
    bdnz+      branch_0x8031df94
branch_0x8031e038:
    cmplwi  r7, 0x20
    bne-    branch_0x8031e050
    blr

branch_0x8031e044:
    lwz     r5, R13Off_m0x5af0(r13)
    addi    r0, r5, 0x1
    stw     r0, R13Off_m0x5af0(r13)
branch_0x8031e050:
    slwi    r0, r7, 3
    add     r5, r6, r0
    stw     r3, 0x4(r5)
    stwx    r4, r6, r0
    blr


.globl unRegistTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
unRegistTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack: # 0x8031e064
    lwz     r0, R13Off_m0x5af0(r13)
    lis     r5, sTrackList__Q28JASystem8TrackMgr@ha
    li      r4, 0x0
    cmplwi  r0, 0x0
    mtctr   r0
    addi    r0, r4, 0x0
    addi    r6, r5, sTrackList__Q28JASystem8TrackMgr@l
    ble-    branch_0x8031e0a0
branch_0x8031e084:
    add     r7, r6, r4
    lwz     r5, 0x0(r7)
    cmplw   r5, r3
    bne-    branch_0x8031e098
    stw     r0, 0x0(r7)
branch_0x8031e098:
    addi    r4, r4, 0x8
    bdnz+      branch_0x8031e084
branch_0x8031e0a0:
    lis     r3, sTrackList__Q28JASystem8TrackMgr@ha
    addi    r4, r3, sTrackList__Q28JASystem8TrackMgr@l
    b       branch_0x8031e0cc

branch_0x8031e0ac:
    slwi    r0, r0, 3
    add     r3, r4, r0
    lwz     r0, -0x8(r3)
    cmplwi  r0, 0x0
    bnelr-    

    lwz     r3, R13Off_m0x5af0(r13)
    addi    r0, r3, -0x1
    stw     r0, R13Off_m0x5af0(r13)
branch_0x8031e0cc:
    lwz     r0, R13Off_m0x5af0(r13)
    cmplwi  r0, 0x0
    bne+    branch_0x8031e0ac
    blr


.globl backTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack
backTrack__Q28JASystem8TrackMgrFPQ28JASystem6TTrack: # 0x8031e0dc
    lwz     r4, R13Off_m0x5aec(r13)
    lwz     r0, R13Off_m0x5af4(r13)
    cmplw   r4, r0
    bne-    branch_0x8031e0f4
    li      r3, 0x0
    blr

branch_0x8031e0f4:
    lwz     r0, R13Off_m0x5ae4(r13)
    lwz     r4, R13Off_m0x5afc(r13)
    slwi    r0, r0, 2
    stwx    r3, r4, r0
    lwz     r3, R13Off_m0x5ae4(r13)
    lwz     r4, R13Off_m0x5aec(r13)
    addi    r3, r3, 0x1
    lwz     r0, R13Off_m0x5af4(r13)
    stw     r3, R13Off_m0x5ae4(r13)
    addi    r4, r4, 0x1
    lwz     r3, R13Off_m0x5ae4(r13)
    stw     r4, R13Off_m0x5aec(r13)
    cmplw   r3, r0
    bne-    branch_0x8031e134
    li      r0, 0x0
    stw     r0, R13Off_m0x5ae4(r13)
branch_0x8031e134:
    li      r3, 0x1
    blr


.globl registerTrackCallback__Q28JASystem8TrackMgrFPFPQ28JASystem6TTrackUs_Us
registerTrackCallback__Q28JASystem8TrackMgrFPFPQ28JASystem6TTrackUs_Us: # 0x8031e13c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      registerTrackCallback__Q28JASystem6TTrackFPFPQ28JASystem6TTrackUs_Us
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

