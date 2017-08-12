
.globl init__Q28JASystem6KernelFv
init__Q28JASystem6KernelFv: # 0x80315d40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      resetCallback__Q28JASystem6KernelFv
    bl      initSystem__Q28JASystem6KernelFv
    bl      portCmdInit__Q28JASystem6KernelFv
    bl      init__Q28JASystem3DvdFv
    bl      initSinfT__Q28JASystem4CalcFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSystem__Q28JASystem6KernelFv
initSystem__Q28JASystem6KernelFv: # 0x80315d70
    mflr    r0
    lis     r3, dac__Q28JASystem6Kernel@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, dac__Q28JASystem6Kernel@l
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)
    li      r28, 0x0
branch_0x80315d9c:
    lwz     r0, R13Off_m0x73c4(r13)
    slwi    r3, r0, 1
    bl      allocFromSysDram__Q28JASystem6KernelFUl
    add     r29, r30, r31
    stw     r3, 0x0(r29)
    lwz     r0, R13Off_m0x73c4(r13)
    lwz     r3, 0x0(r29)
    slwi    r4, r0, 1
    bl      bzero__Q28JASystem4CalcFPvUl
    lwz     r0, R13Off_m0x73c4(r13)
    lwz     r3, 0x0(r29)
    slwi    r4, r0, 1
    bl      DCStoreRange
    addi    r28, r28, 0x1
    cmpwi   r28, 0x3
    addi    r31, r31, 0x4
    blt+    branch_0x80315d9c
    li      r3, 0x0
    bl      AIInit
    lis     r3, dac__Q28JASystem6Kernel@ha
    lwz     r0, R13Off_m0x73c4(r13)
    addi    r3, r3, dac__Q28JASystem6Kernel@l
    lwz     r3, 0x8(r3)
    slwi    r4, r0, 1
    bl      AIInitDMA
    bl      initVloadBuffers__Q28JASystem5VloadFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    blr


.globl registerMixCallback__Q28JASystem6KernelFPFl_PsUc
registerMixCallback__Q28JASystem6KernelFPFl_PsUc: # 0x80315e24
    stw     r3, R13Off_m0x5be8(r13)
    stb     r4, R13Off_m0x5be4(r13)
    blr


.globl vframeWork__Q28JASystem6KernelFv
vframeWork__Q28JASystem6KernelFv: # 0x80315e30
    mflr    r0
    lis     r3, dac__Q28JASystem6Kernel@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, dac__Q28JASystem6Kernel@l
    stw     r30, 0x10(sp)
    lbz     r0, R13Off_m0x5bdc(r13)
    extsb.  r0, r0
    bne-    branch_0x80315e68
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, R13Off_m0x5be0(r13)
    stb     r0, R13Off_m0x5bdc(r13)
branch_0x80315e68:
    lwz     r3, R13Off_m0x5bec(r13)
    lwz     r4, R13Off_m0x73c4(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5bec(r13)
    srwi    r3, r4, 1
    bl      mixDSP__Q28JASystem6DSPBufFl
    lwz     r0, R13Off_m0x5be0(r13)
    addi    r4, r3, 0x0
    lwz     r5, R13Off_m0x73c8(r13)
    lwz     r6, R13Off_m0x73c4(r13)
    slwi    r0, r0, 2
    slwi    r3, r5, 1
    lwzx    r5, r31, r0
    add     r3, r4, r3
    srwi    r6, r6, 1
    bl      imixcopy__Q28JASystem4CalcFPCsPCsPsl
    lwz     r5, R13Off_m0x5be8(r13)
    cmplwi  r5, 0x0
    beq-    branch_0x80315f4c
    lbz     r0, R13Off_m0x5be4(r13)
    cmpwi   r0, 0x2
    beq-    branch_0x80315f18
    bge-    branch_0x80315ed4
    cmpwi   r0, 0x0
    beq-    branch_0x80315ee0
    bge-    branch_0x80315efc
    b       branch_0x80315f4c

branch_0x80315ed4:
    cmpwi   r0, 0x4
    bge-    branch_0x80315f4c
    b       branch_0x80315f34

branch_0x80315ee0:
    lwz     r0, R13Off_m0x5be0(r13)
    lwz     r4, R13Off_m0x73c4(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    srwi    r4, r4, 1
    bl      mixMonoTrack__Q28JASystem6KernelFPslPFl_Ps
    b       branch_0x80315f4c

branch_0x80315efc:
    lwz     r0, R13Off_m0x5be0(r13)
    lwz     r4, R13Off_m0x73c4(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    srwi    r4, r4, 1
    bl      mixMonoTrackWide__Q28JASystem6KernelFPslPFl_Ps
    b       branch_0x80315f4c

branch_0x80315f18:
    lwz     r0, R13Off_m0x5be0(r13)
    lwz     r4, R13Off_m0x73c4(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    srwi    r4, r4, 1
    bl      mixExtraTrack__Q28JASystem6KernelFPslPFl_Ps
    b       branch_0x80315f4c

branch_0x80315f34:
    lwz     r0, R13Off_m0x5be0(r13)
    lwz     r4, R13Off_m0x73c4(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    srwi    r4, r4, 1
    bl      mixInterleaveTrack__Q28JASystem6KernelFPslPFl_Ps
branch_0x80315f4c:
    bl      OSDisableInterrupts
    lwz     r0, R13Off_m0x5be0(r13)
    addi    r30, r3, 0x0
    lwz     r4, R13Off_m0x73c4(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    slwi    r4, r4, 1
    bl      DCStoreRange
    mr      r3, r30
    bl      OSRestoreInterrupts
    lwz     r4, R13Off_m0x5be0(r13)
    slwi    r0, r4, 2
    lwzx    r3, r31, r0
    addi    r0, r4, 0x1
    stw     r0, R13Off_m0x5be0(r13)
    lwz     r0, R13Off_m0x5be0(r13)
    stw     r3, R13Off_m0x5bfc(r13)
    cmplwi  r0, 0x3
    bne-    branch_0x80315fa0
    li      r0, 0x0
    stw     r0, R13Off_m0x5be0(r13)
branch_0x80315fa0:
    li      r0, 0x0
    stw     r0, R13Off_m0x5bf4(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl updateDac__Q28JASystem6KernelFv
updateDac__Q28JASystem6KernelFv: # 0x80315fc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5bf8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80315fe8
    lwz     r3, R13Off_m0x5bfc(r13)
    li      r0, 0x0
    stw     r3, R13Off_m0x5bf8(r13)
    stw     r0, R13Off_m0x5bfc(r13)
branch_0x80315fe8:
    lwz     r3, R13Off_m0x5bf8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8031600c
    lwz     r0, R13Off_m0x73c4(r13)
    slwi    r4, r0, 1
    bl      AIInitDMA
    li      r0, 0x0
    stw     r0, R13Off_m0x5bf8(r13)
    b       branch_0x80316018

branch_0x8031600c:
    lwz     r3, R13Off_m0x5c00(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5c00(r13)
branch_0x80316018:
    lwz     r0, R13Off_m0x5bfc(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80316034
    lwz     r0, R13Off_m0x5bf4(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80316034
    bl      vframeWork__Q28JASystem6KernelFv
branch_0x80316034:
    bl      main__Q28JASystem10HardStreamFv
    lwz     r12, R13Off_m0x5bf0(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80316058
    lwz     r0, R13Off_m0x73c4(r13)
    mtlr    r12
    lwz     r3, R13Off_m0x5bfc(r13)
    srwi    r4, r0, 1
    blrl
branch_0x80316058:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl mixMonoTrack__Q28JASystem6KernelFPslPFl_Ps
mixMonoTrack__Q28JASystem6KernelFPslPFl_Ps: # 0x80316068
    mflr    r0
    lis     r6, unk_803aa6c0@ha
    stw     r0, 0x4(sp)
    addi    r0, r6, unk_803aa6c0@l
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    mr      r4, r0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    li      r3, 0x5
    bl      probeStart__Q28JASystem6KernelFlPc
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    blrl
    mr.     r31, r3
    beq-    branch_0x80316148
    li      r3, 0x5
    bl      probeFinish__Q28JASystem6KernelFl
    mr.     r0, r30
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    mtctr   r0
    ble-    branch_0x80316148
branch_0x803160d4:
    lha     r3, 0x0(r4)
    lha     r0, 0x0(r5)
    add     r0, r3, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x803160f0
    li      r0, -0x7fff
    b       branch_0x80316104

branch_0x803160f0:
    cmpwi   r0, 0x7fff
    ble-    branch_0x80316100
    li      r0, 0x7fff
    b       branch_0x80316104

branch_0x80316100:
    extsh   r0, r0
branch_0x80316104:
    sth     r0, 0x0(r4)
    lhau    r3, 0x2(r4)
    lha     r0, 0x0(r5)
    add     r0, r3, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x80316124
    li      r0, -0x7fff
    b       branch_0x80316138

branch_0x80316124:
    cmpwi   r0, 0x7fff
    ble-    branch_0x80316134
    li      r0, 0x7fff
    b       branch_0x80316138

branch_0x80316134:
    extsh   r0, r0
branch_0x80316138:
    sth     r0, 0x0(r4)
    addi    r4, r4, 0x2
    addi    r5, r5, 0x2
    bdnz+      branch_0x803160d4
branch_0x80316148:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl mixMonoTrackWide__Q28JASystem6KernelFPslPFl_Ps
mixMonoTrackWide__Q28JASystem6KernelFPslPFl_Ps: # 0x80316164
    mflr    r0
    lis     r6, unk_803aa6cc@ha
    stw     r0, 0x4(sp)
    addi    r0, r6, unk_803aa6cc@l
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    mr      r4, r0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    li      r3, 0x5
    bl      probeStart__Q28JASystem6KernelFlPc
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    blrl
    mr.     r31, r3
    beq-    branch_0x80316244
    li      r3, 0x5
    bl      probeFinish__Q28JASystem6KernelFl
    mr.     r0, r30
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    mtctr   r0
    ble-    branch_0x80316244
branch_0x803161d0:
    lha     r3, 0x0(r4)
    lha     r0, 0x0(r5)
    add     r0, r3, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x803161ec
    li      r0, -0x7fff
    b       branch_0x80316200

branch_0x803161ec:
    cmpwi   r0, 0x7fff
    ble-    branch_0x803161fc
    li      r0, 0x7fff
    b       branch_0x80316200

branch_0x803161fc:
    extsh   r0, r0
branch_0x80316200:
    sth     r0, 0x0(r4)
    lha     r3, 0x0(r5)
    lhau    r0, 0x2(r4)
    subf    r0, r3, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x80316220
    li      r0, -0x7fff
    b       branch_0x80316234

branch_0x80316220:
    cmpwi   r0, 0x7fff
    ble-    branch_0x80316230
    li      r0, 0x7fff
    b       branch_0x80316234

branch_0x80316230:
    extsh   r0, r0
branch_0x80316234:
    sth     r0, 0x0(r4)
    addi    r4, r4, 0x2
    addi    r5, r5, 0x2
    bdnz+      branch_0x803161d0
branch_0x80316244:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl mixExtraTrack__Q28JASystem6KernelFPslPFl_Ps
mixExtraTrack__Q28JASystem6KernelFPslPFl_Ps: # 0x80316260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    addi    r4, r2, R2Off_0x708
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    li      r3, 0x5
    bl      probeStart__Q28JASystem6KernelFlPc
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    blrl
    mr.     r31, r3
    beq-    branch_0x8031635c
    li      r3, 0x5
    bl      probeFinish__Q28JASystem6KernelFl
    li      r3, 0x6
    addi    r4, r2, R2Off_0x710
    bl      probeStart__Q28JASystem6KernelFlPc
    mr.     r3, r30
    lwz     r0, R13Off_m0x73c8(r13)
    addi    r4, r29, 0x0
    slwi    r0, r0, 1
    mtctr   r3
    addi    r5, r31, 0x0
    add     r6, r31, r0
    ble-    branch_0x80316354
branch_0x803162dc:
    lha     r3, 0x0(r4)
    lha     r0, 0x0(r6)
    add     r0, r3, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x803162f8
    li      r0, -0x7fff
    b       branch_0x8031630c

branch_0x803162f8:
    cmpwi   r0, 0x7fff
    ble-    branch_0x80316308
    li      r0, 0x7fff
    b       branch_0x8031630c

branch_0x80316308:
    extsh   r0, r0
branch_0x8031630c:
    sth     r0, 0x0(r4)
    lhau    r3, 0x2(r4)
    lha     r0, 0x0(r5)
    add     r0, r3, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x8031632c
    li      r0, -0x7fff
    b       branch_0x80316340

branch_0x8031632c:
    cmpwi   r0, 0x7fff
    ble-    branch_0x8031633c
    li      r0, 0x7fff
    b       branch_0x80316340

branch_0x8031633c:
    extsh   r0, r0
branch_0x80316340:
    sth     r0, 0x0(r4)
    addi    r4, r4, 0x2
    addi    r6, r6, 0x2
    addi    r5, r5, 0x2
    bdnz+      branch_0x803162dc
branch_0x80316354:
    li      r3, 0x6
    bl      probeFinish__Q28JASystem6KernelFl
branch_0x8031635c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl mixInterleaveTrack__Q28JASystem6KernelFPslPFl_Ps
mixInterleaveTrack__Q28JASystem6KernelFPslPFl_Ps: # 0x80316378
    mflr    r0
    addi    r12, r5, 0x0
    stw     r0, 0x4(sp)
    mtlr    r12
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x803163fc
    slwi.   r0, r31, 1
    addi    r5, r30, 0x0
    mtctr   r0
    ble-    branch_0x803163fc
branch_0x803163bc:
    lha     r4, 0x0(r5)
    lha     r0, 0x0(r3)
    add     r0, r4, r0
    cmpwi   r0, -0x8000
    bge-    branch_0x803163d8
    li      r0, -0x7fff
    b       branch_0x803163ec

branch_0x803163d8:
    cmpwi   r0, 0x7fff
    ble-    branch_0x803163e8
    li      r0, 0x7fff
    b       branch_0x803163ec

branch_0x803163e8:
    extsh   r0, r0
branch_0x803163ec:
    sth     r0, 0x0(r5)
    addi    r5, r5, 0x2
    addi    r3, r3, 0x2
    bdnz+      branch_0x803163bc
branch_0x803163fc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr

