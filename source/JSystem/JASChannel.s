
.globl calcEffect__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
calcEffect__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc: # 0x80311844
    clrlwi  r0, r5, 24
    lfs     f1, 0x690(rtoc)
    mulli   r6, r0, 0x3
    lis     r5, 0x803e
    addi    r0, r5, 0x27d0
    add     r5, r0, r6
    lbz     r0, 0x0(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x8031187c
    bge-    branch_0x80311870
    b       branch_0x80311894

branch_0x80311870:
    cmpwi   r0, 0x3
    bge-    branch_0x80311894
    b       branch_0x80311888

branch_0x8031187c:
    lfs     f0, 0x0(r3)
    fadds   f1, f1, f0
    b       branch_0x80311894

branch_0x80311888:
    lfs     f2, 0x0(r3)
    lfs     f0, 0x0(r4)
    fmadds  f1, f2, f0, f1
branch_0x80311894:
    lbz     r0, 0x1(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x803118b4
    bge-    branch_0x803118a8
    b       branch_0x803118cc

branch_0x803118a8:
    cmpwi   r0, 0x3
    bge-    branch_0x803118cc
    b       branch_0x803118c0

branch_0x803118b4:
    lfs     f0, 0x4(r3)
    fadds   f1, f1, f0
    b       branch_0x803118cc

branch_0x803118c0:
    lfs     f2, 0x4(r3)
    lfs     f0, 0x4(r4)
    fmadds  f1, f2, f0, f1
branch_0x803118cc:
    lbz     r0, 0x2(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x803118e8
    bltlr-    

    cmpwi   r0, 0x3
    bgelr-    

    b       branch_0x803118f4

branch_0x803118e8:
    lfs     f0, 0x8(r3)
    fadds   f1, f1, f0
    blr

branch_0x803118f4:
    lfs     f2, 0x8(r3)
    lfs     f0, 0x8(r4)
    fmadds  f1, f2, f0, f1
    blr


.globl calcPan__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
calcPan__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc: # 0x80311904
    clrlwi  r0, r5, 24
    lfs     f1, 0x690(rtoc)
    mulli   r6, r0, 0x3
    lis     r5, 0x803e
    addi    r0, r5, 0x27d0
    add     r5, r0, r6
    lbz     r0, 0x0(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x8031193c
    bge-    branch_0x80311930
    b       branch_0x80311964

branch_0x80311930:
    cmpwi   r0, 0x3
    bge-    branch_0x80311964
    b       branch_0x80311950

branch_0x8031193c:
    lfs     f2, 0x0(r3)
    lfs     f0, 0x694(rtoc)
    fsubs   f0, f2, f0
    fadds   f1, f1, f0
    b       branch_0x80311964

branch_0x80311950:
    lfs     f3, 0x0(r3)
    lfs     f2, 0x694(rtoc)
    lfs     f0, 0x0(r4)
    fsubs   f2, f3, f2
    fmadds  f1, f2, f0, f1
branch_0x80311964:
    lbz     r0, 0x1(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x80311984
    bge-    branch_0x80311978
    b       branch_0x803119ac

branch_0x80311978:
    cmpwi   r0, 0x3
    bge-    branch_0x803119ac
    b       branch_0x80311998

branch_0x80311984:
    lfs     f2, 0x4(r3)
    lfs     f0, 0x694(rtoc)
    fsubs   f0, f2, f0
    fadds   f1, f1, f0
    b       branch_0x803119ac

branch_0x80311998:
    lfs     f3, 0x4(r3)
    lfs     f2, 0x694(rtoc)
    lfs     f0, 0x4(r4)
    fsubs   f2, f3, f2
    fmadds  f1, f2, f0, f1
branch_0x803119ac:
    lbz     r0, 0x2(r5)
    cmpwi   r0, 0x1
    beq-    branch_0x803119cc
    bge-    branch_0x803119c0
    b       branch_0x803119f4

branch_0x803119c0:
    cmpwi   r0, 0x3
    bge-    branch_0x803119f4
    b       branch_0x803119e0

branch_0x803119cc:
    lfs     f2, 0x8(r3)
    lfs     f0, 0x694(rtoc)
    fsubs   f0, f2, f0
    fadds   f1, f1, f0
    b       branch_0x803119f4

branch_0x803119e0:
    lfs     f3, 0x8(r3)
    lfs     f2, 0x694(rtoc)
    lfs     f0, 0x8(r4)
    fsubs   f2, f3, f2
    fmadds  f1, f2, f0, f1
branch_0x803119f4:
    lfs     f0, 0x694(rtoc)
    fadds   f1, f1, f0
    blr


.globl __UpdateJcToDSP__Q28JASystem6DriverFPQ28JASystem8TChannel
__UpdateJcToDSP__Q28JASystem6DriverFPQ28JASystem8TChannel: # 0x80311a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    stw     r29, 0x24(sp)
    lwz     r0, 0xd0(r3)
    lwz     r3, 0x20(r3)
    cmpwi   r0, 0x0
    lwz     r31, 0xc(r3)
    beq-    branch_0x80311a7c
    li      r29, 0x0
    b       branch_0x80311a54

branch_0x80311a38:
    clrlslwi  r3, r29, 24, 1
    addi    r0, r3, 0xb4
    lhax    r5, r30, r0
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      setMixerVolumeOnly__Q38JASystem12DSPInterface9DSPBufferFUcs
    addi    r29, r29, 0x1
branch_0x80311a54:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x6
    blt+    branch_0x80311a38
    mr      r3, r31
    lhz     r4, 0x98(r30)
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    mr      r3, r31
    lbz     r4, 0x2(r30)
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
    b       branch_0x80311b2c

branch_0x80311a7c:
    li      r29, 0x0
    b       branch_0x80311ab0

branch_0x80311a84:
    clrlwi  r5, r29, 24
    lwz     r3, 0x4(r30)
    clrlslwi  r4, r29, 24, 1
    addi    r4, r4, 0xb4
    addi    r0, r5, 0x5a
    lhax    r5, r30, r4
    lbzx    r6, r3, r0
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    addi    r29, r29, 0x1
branch_0x80311ab0:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x6
    blt+    branch_0x80311a84
    mr      r3, r31
    lhz     r4, 0x98(r30)
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    lwz     r4, 0x4(r30)
    lbz     r0, 0x61(r4)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80311ae4
    addi    r3, r31, 0x0
    addi    r4, r4, 0x3c
    bl      setIIRFilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
branch_0x80311ae4:
    lwz     r4, 0x4(r30)
    lbz     r0, 0x61(r4)
    clrlwi. r0, r0, 27
    beq-    branch_0x80311b00
    addi    r3, r31, 0x0
    addi    r4, r4, 0x2c
    bl      setFIR8FilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
branch_0x80311b00:
    lwz     r4, 0x4(r30)
    mr      r3, r31
    lbz     r4, 0x61(r4)
    bl      setFilterMode__Q38JASystem12DSPInterface9DSPBufferFUs
    lwz     r4, 0x4(r30)
    mr      r3, r31
    lha     r4, 0x4c(r4)
    bl      setDistFilter__Q38JASystem12DSPInterface9DSPBufferFs
    mr      r3, r31
    lbz     r4, 0x2(r30)
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
branch_0x80311b2c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __UpdateJcToDSPInit__Q28JASystem6DriverFPQ28JASystem8TChannel
__UpdateJcToDSPInit__Q28JASystem6DriverFPQ28JASystem8TChannel: # 0x80311b48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    lwz     r3, 0x20(r3)
    lhz     r0, 0xa8(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r0, 0xffff
    addi    r30, r3, 0x0
    bne-    branch_0x80311b84
    bl      initAutoMixer__Q38JASystem12DSPInterface9DSPBufferFv
    b       branch_0x80311bd4

branch_0x80311b84:
    lwz     r4, 0x4(r31)
    mr      r3, r30
    lbz     r4, 0x60(r4)
    bl      setMixerInitDelayMax__Q38JASystem12DSPInterface9DSPBufferFUc
    li      r29, 0x0
    b       branch_0x80311bc8

branch_0x80311b9c:
    clrlwi  r5, r29, 24
    lwz     r3, 0x4(r31)
    clrlslwi  r4, r29, 24, 1
    addi    r4, r4, 0xb4
    addi    r0, r5, 0x5a
    lhax    r5, r31, r4
    lbzx    r6, r3, r0
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
    addi    r29, r29, 0x1
branch_0x80311bc8:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x6
    blt+    branch_0x80311b9c
branch_0x80311bd4:
    mr      r3, r30
    lhz     r4, 0x98(r31)
    bl      setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
    lwz     r4, 0x4(r31)
    lbz     r0, 0x61(r4)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80311bfc
    addi    r3, r30, 0x0
    addi    r4, r4, 0x3c
    bl      setIIRFilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
branch_0x80311bfc:
    lwz     r4, 0x4(r31)
    lbz     r0, 0x61(r4)
    clrlwi. r0, r0, 27
    beq-    branch_0x80311c18
    addi    r3, r30, 0x0
    addi    r4, r4, 0x2c
    bl      setFIR8FilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
branch_0x80311c18:
    lwz     r4, 0x4(r31)
    mr      r3, r30
    lbz     r4, 0x61(r4)
    bl      setFilterMode__Q38JASystem12DSPInterface9DSPBufferFUs
    mr      r3, r30
    lbz     r4, 0x2(r31)
    bl      setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl extraUpdate__Q28JASystem6DriverFPQ28JASystem8TChannelUl
extraUpdate__Q28JASystem6DriverFPQ28JASystem8TChannelUl: # 0x80311c50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0x9a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80311d18
    lfs     f1, 0x94(r31)
    lfs     f0, 0x50(r31)
    fsubs   f31, f1, f0
    bl      getUpdateInterval__Q28JASystem6DriverFv
    lhz     r0, 0x9a(r31)
    clrlwi  r6, r3, 24
    cmpw    r0, r6
    bgt-    branch_0x80311c9c
    li      r0, 0x1
    sth     r0, 0x9a(r31)
branch_0x80311c9c:
    lhz     r5, 0x9a(r31)
    clrlwi  r4, r3, 24
    lis     r0, 0x4330
    stw     r4, 0x14(sp)
    lfd     f3, 0x698(rtoc)
    stw     r5, 0x1c(sp)
    lfs     f0, 0x50(r31)
    stw     r0, 0x18(sp)
    lfd     f1, 0x18(sp)
    stw     r0, 0x10(sp)
    fsubs   f2, f1, f3
    lfd     f1, 0x10(sp)
    fdivs   f31, f31, f2
    fsubs   f1, f1, f3
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x50(r31)
    lhz     r3, 0x9a(r31)
    subf.   r0, r6, r3
    bgt-    branch_0x80311cf4
    li      r0, 0x0
    sth     r0, 0x9a(r31)
    b       branch_0x80311cfc

branch_0x80311cf4:
    subf    r0, r4, r3
    sth     r0, 0x9a(r31)
branch_0x80311cfc:
    lhz     r0, 0x9a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80311d10
    li      r0, 0x0
    stw     r0, 0x2c(r31)
branch_0x80311d10:
    li      r3, 0x1
    b       branch_0x80311d1c

branch_0x80311d18:
    li      r3, 0x0
branch_0x80311d1c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl updatecallLogicalChannel__Q28JASystem6DriverFPQ28JASystem8TChannelUl
updatecallLogicalChannel__Q28JASystem6DriverFPQ28JASystem8TChannelUl: # 0x80311d34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr.     r29, r4
    lwz     r30, 0x4(r3)
    bne-    branch_0x80311dc4
    li      r29, 0x0
branch_0x80311d60:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      releaseOsc__Q28JASystem8TChannelFUl
    addi    r29, r29, 0x1
    cmplwi  r29, 0x4
    blt+    branch_0x80311d60
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80311d90
    lwz     r0, 0xc0(r31)
    extrwi  r0, r0, 8, 16
    stb     r0, 0x3(r3)
branch_0x80311d90:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x80311db4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x2
    bl      addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80311db4:
    li      r0, -0x1
    stw     r0, 0x30(r31)
    li      r3, 0x0
    b       branch_0x80311eb4

branch_0x80311dc4:
    subi    r0, r29, 0x1
    cmplwi  r0, 0x1
    ble-    branch_0x80311dd8
    cmplwi  r29, 0x6
    bne-    branch_0x80311eb0
branch_0x80311dd8:
    lwz     r0, 0x4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80311e34
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x80311e7c
    lwz     r3, 0x4(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    lwz     r3, 0xc8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80311e28
    li      r0, 0x0
    stw     r0, 0xc8(r31)
    addi    r5, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      checkLimitStop__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80311e28:
    mr      r3, r31
    bl      release__Q28JASystem8ChGlobalFPQ28JASystem8TChannel
    b       branch_0x80311e7c

branch_0x80311e34:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x80311e7c
    lwz     r3, 0xc8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80311e6c
    li      r0, 0x0
    stw     r0, 0xc8(r31)
    addi    r5, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      checkLimitStop__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80311e6c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80311e7c:
    cmplwi  r29, 0x6
    beq-    branch_0x80311e90
    mr      r3, r31
    bl      stopLogicalChannel__Q28JASystem8TChannelFv
    b       branch_0x80311e98

branch_0x80311e90:
    mr      r3, r31
    bl      deleteQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel
branch_0x80311e98:
    li      r0, 0xff
    stb     r0, 0x1(r31)
    li      r3, -0x1
    li      r0, 0x0
    stw     r3, 0x30(r31)
    stw     r0, 0x28(r31)
branch_0x80311eb0:
    li      r3, 0x0
branch_0x80311eb4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl killBrokenLogicalChannels__Q28JASystem6DriverFPQ28JASystem11TDSPChannel
killBrokenLogicalChannels__Q28JASystem6DriverFPQ28JASystem11TDSPChannel: # 0x80311ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
branch_0x80311ef4:
    mr      r3, r31
    bl      getChannelHandle__Q28JASystem8ChGlobalFUl
    mr.     r30, r3
    beq-    branch_0x80311f4c
    lwz     r0, 0x20(r30)
    cmplw   r0, r28
    bne-    branch_0x80311f4c
    lwz     r0, 0x4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80311f4c
    mr      r29, r0
    addi    r3, r30, 0x0
    bl      stopLogicalChannel__Q28JASystem8TChannelFv
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x80311f4c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80311f4c:
    addi    r31, r31, 0x1
    cmplwi  r31, 0x100
    blt+    branch_0x80311ef4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl updateMixer__Q28JASystem6DriverFPQ28JASystem8TChannelffff
updateMixer__Q28JASystem6DriverFPQ28JASystem8TChannelffff: # 0x80311f78
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    lis     r5, 0x803e
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stfd    f28, 0x90(sp)
    stfd    f27, 0x88(sp)
    stfd    f26, 0x80(sp)
    stfd    f25, 0x78(sp)
    stfd    f24, 0x70(sp)
    stfd    f23, 0x68(sp)
    fmr     f23, f4
    stfd    f22, 0x60(sp)
    fmr     f22, f3
    stfd    f21, 0x58(sp)
    fmr     f21, f2
    stfd    f20, 0x50(sp)
    fmr     f20, f1
    stmw    r25, 0x34(sp)
    addi    r30, r3, 0x0
    addi    r27, r4, 0x2824
    addi    r26, r5, 0x2844
    li      r31, 0x0
    li      r29, 0x0
    lis     r28, 0x4330
    lfs     f29, 0x6a8(rtoc)
    lfs     f30, 0x690(rtoc)
    fsubs   f27, f29, f21
    lfd     f31, 0x698(rtoc)
    fsubs   f26, f29, f22
    fsubs   f25, f29, f23
branch_0x80312000:
    add     r25, r30, r29
    fmr     f28, f20
    lhz     r0, 0xa8(r25)
    sth     r0, 0x1c(sp)
    lbz     r0, 0x1c(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x80312028
    li      r0, 0x0
    sth     r0, 0xb4(r25)
    b       branch_0x80312158

branch_0x80312028:
    lbz     r0, 0x1d(sp)
    extrwi. r0, r0, 4, 24
    beq-    branch_0x80312084
    cmplwi  r0, 0x7
    bgt-    branch_0x80312078
    slwi    r0, r0, 2
    lwzx    r0, r26, r0
    mtctr   r0
    bctr       
    fmr     f24, f21
    b       branch_0x80312078


.incbin "./baserom/code/Text_0x80005600.bin", 0x30ca54, 0x80312078 - 0x80312054
branch_0x80312078:
    fmr     f1, f24
    bl      sinfT__Q28JASystem4CalcFf
    fmuls   f28, f28, f1
branch_0x80312084:
    lbz     r3, 0x1d(sp)
    clrlwi. r3, r3, 28
    beq-    branch_0x80312108
    cmplwi  r3, 0x7
    bgt-    branch_0x803120d4
    slwi    r0, r3, 2
    lwzx    r0, r27, r0
    mtctr   r0
    bctr       
    fmr     f24, f21
    b       branch_0x803120d4


.incbin "./baserom/code/Text_0x80005600.bin", 0x30cab0, 0x803120d4 - 0x803120b0
branch_0x803120d4:
    cmpwi   r3, 0x7
    beq-    branch_0x803120ec
    bge-    branch_0x803120fc
    cmpwi   r3, 0x3
    beq-    branch_0x803120ec
    b       branch_0x803120fc

branch_0x803120ec:
    fmr     f1, f24
    bl      sinfDolby2__Q28JASystem4CalcFf
    fmuls   f28, f28, f1
    b       branch_0x80312108

branch_0x803120fc:
    fmr     f1, f24
    bl      sinfT__Q28JASystem4CalcFf
    fmuls   f28, f28, f1
branch_0x80312108:
    fcmpo   cr0, f28, f30
    cror    2, 0, 2
    bne-    branch_0x8031211c
    fmr     f28, f30
    b       branch_0x8031212c

branch_0x8031211c:
    fcmpo   cr0, f28, f29
    cror    2, 1, 2
    bne-    branch_0x8031212c
    fmr     f28, f29
branch_0x8031212c:
    bl      getMixerLevel__Q28JASystem6DriverFv
    clrlwi  r0, r3, 16
    stw     r0, 0x2c(sp)
    stw     r28, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f31
    fmuls   f0, f28, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    sth     r0, 0xb4(r25)
branch_0x80312158:
    addi    r31, r31, 0x1
    cmplwi  r31, 0x6
    addi    r29, r29, 0x2
    blt+    branch_0x80312000
    lmw     r25, 0x34(sp)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lfd     f28, 0x90(sp)
    lfd     f27, 0x88(sp)
    lfd     f26, 0x80(sp)
    lfd     f25, 0x78(sp)
    lfd     f24, 0x70(sp)
    lfd     f23, 0x68(sp)
    lfd     f22, 0x60(sp)
    lfd     f21, 0x58(sp)
    lfd     f20, 0x50(sp)
    addi    sp, sp, 0xb0
    blr


.globl updatecallDSPChannel__Q28JASystem6DriverFPQ28JASystem11TDSPChannelUl
updatecallDSPChannel__Q28JASystem6DriverFPQ28JASystem11TDSPChannelUl: # 0x803121ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r27, r3
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803121d4
    lwz     r31, 0x8(r27)
    b       branch_0x803121d8

branch_0x803121d4:
    li      r31, 0x0
branch_0x803121d8:
    cmplwi  r31, 0x0
    lwz     r30, 0x4(r31)
    li      r28, 0x0
    bne-    branch_0x80312204
    li      r0, 0x0
    stw     r0, 0x10(r27)
    mr      r3, r27
    stb     r0, 0x3(r27)
    bl      killBrokenLogicalChannels__Q28JASystem6DriverFPQ28JASystem11TDSPChannel
    li      r3, 0x0
    b       branch_0x8031253c

branch_0x80312204:
    lwz     r3, 0x20(r31)
    cmplw   r3, r27
    beq-    branch_0x80312280
    cmplwi  r3, 0x0
    beq-    branch_0x80312244
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8031222c
    lwz     r0, 0x8(r3)
    b       branch_0x80312230

branch_0x8031222c:
    li      r0, 0x0
branch_0x80312230:
    cmplw   r31, r0
    bne-    branch_0x80312244
    mr      r3, r27
    bl      killBrokenLogicalChannels__Q28JASystem6DriverFPQ28JASystem11TDSPChannel
    b       branch_0x80312270

branch_0x80312244:
    mr      r3, r31
    bl      stopLogicalChannel__Q28JASystem8TChannelFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x80312270
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80312270:
    mr      r3, r27
    bl      forceDelete__Q28JASystem11TDSPChannelFv
    li      r3, 0x0
    b       branch_0x8031253c

branch_0x80312280:
    cmplwi  r4, 0x2
    bne-    branch_0x803122dc
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x803122a8
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x1
    blrl
    b       branch_0x803122d4

branch_0x803122a8:
    mr      r3, r31
    bl      stopLogicalChannel__Q28JASystem8TChannelFv
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x803122d4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x803122d4:
    li      r3, 0x0
    b       branch_0x8031253c

branch_0x803122dc:
    lwz     r5, 0x10(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80312304
    lwz     r5, 0x24(r5)
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80312304
    bl      forceStop__Q28JASystem11TDSPChannelFv
    li      r3, -0x1
    b       branch_0x8031253c

branch_0x80312304:
    cmplwi  r4, 0x4
    bne-    branch_0x80312334
    lwz     r0, 0xc0(r31)
    cmplwi  r3, 0x0
    extrwi  r4, r0, 8, 8
    beq-    branch_0x8031232c
    lbzu    r0, 0x3(r3)
    cmplw   r4, r0
    bge-    branch_0x8031232c
    stb     r4, 0x0(r3)
branch_0x8031232c:
    li      r3, 0x0
    b       branch_0x8031253c

branch_0x80312334:
    cmplwi  r4, 0x3
    bne-    branch_0x80312378
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      forceStopOsc__Q28JASystem8TChannelFUl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    bne-    branch_0x80312364
    li      r3, 0x1
    b       branch_0x8031253c

branch_0x80312364:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x3
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    li      r4, 0x0
branch_0x80312378:
    cmplwi  r4, 0x0
    bne-    branch_0x803124f0
    lfs     f0, 0x6a8(rtoc)
    li      r29, 0x0
    stfs    f0, 0x8c(r31)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x694(rtoc)
    stfs    f0, 0x6c(r31)
    lfs     f0, 0x690(rtoc)
    stfs    f0, 0x78(r31)
    stfs    f0, 0x84(r31)
branch_0x803123a4:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      isOsc__Q28JASystem8TChannelFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80312458
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      bankOscToOfs__Q28JASystem8TChannelFUl
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      effectOsc__Q28JASystem8TChannelFUlf
    cmplwi  r29, 0x0
    bne-    branch_0x80312454
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      getOscState__Q28JASystem8TChannelCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x80312454
    lwz     r12, 0x28(r31)
    cmplwi  r12, 0x0
    bne-    branch_0x8031243c
    mr      r3, r31
    bl      stopLogicalChannel__Q28JASystem8TChannelFv
    cmpwi   r3, 0x0
    bne-    branch_0x80312410
    mr      r3, r27
    bl      stop__Q28JASystem11TDSPChannelFv
branch_0x80312410:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      cutList__Q28JASystem11TChannelMgrFPQ28JASystem8TChannel
    cmpwi   r3, -0x1
    beq-    branch_0x80312434
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      addListHead__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
branch_0x80312434:
    li      r3, 0x0
    b       branch_0x8031253c

branch_0x8031243c:
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x2
    blrl
    li      r3, 0x0
    b       branch_0x8031253c

branch_0x80312454:
    addi    r28, r28, 0x1
branch_0x80312458:
    addi    r29, r29, 0x1
    cmplwi  r29, 0x4
    blt+    branch_0x803123a4
    cmplwi  r28, 0x0
    beq-    branch_0x8031247c
    mr      r3, r31
    bl      updateEffectorParam__Q28JASystem8TChannelFv
    li      r0, 0x1
    stb     r0, 0x3(r31)
branch_0x8031247c:
    lwz     r12, 0x2c(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x803124ac
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x0
    blrl
    cmplwi  r3, 0x1
    bne-    branch_0x803124ac
    lbz     r3, 0x3(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x3(r31)
branch_0x803124ac:
    bl      getUpdateInterval__Q28JASystem6DriverFv
    lwz     r0, 0x28(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x803124c4
    clrlwi  r3, r3, 24
    b       branch_0x8031253c

branch_0x803124c4:
    lwz     r4, 0x34(r31)
    cmpwi   r4, 0x0
    ble-    branch_0x803124f0
    clrlwi  r0, r3, 24
    cmpw    r4, r0
    ble-    branch_0x803124e8
    subf    r0, r0, r4
    stw     r0, 0x34(r31)
    b       branch_0x803124f0

branch_0x803124e8:
    li      r0, 0x0
    stw     r0, 0x34(r31)
branch_0x803124f0:
    lwz     r0, 0x34(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80312518
    lwz     r12, 0x28(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    mtlr    r12
    blrl
    lwz     r0, 0x30(r31)
    stw     r0, 0x34(r31)
branch_0x80312518:
    lbz     r0, 0x3(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80312534
    mr      r3, r31
    bl      updateJcToDSP__Q28JASystem8TChannelFv
    li      r0, 0x0
    stb     r0, 0x3(r31)
branch_0x80312534:
    bl      getUpdateInterval__Q28JASystem6DriverFv
    clrlwi  r3, r3, 24
branch_0x8031253c:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl init__Q28JASystem8TChannelFv
init__Q28JASystem8TChannelFv: # 0x80312550
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    stw     r6, 0x28(r3)
    stw     r6, 0x2c(r3)
    stw     r6, 0x30(r3)
    stw     r6, 0x34(r3)
    stw     r6, 0x10(r3)
    stb     r6, 0xc(r3)
    stw     r6, 0x14(r3)
    stw     r6, 0x18(r3)
    stw     r6, 0x1c(r3)
    stw     r6, 0xd0(r3)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x803125fc
    li      r0, 0x150
    sth     r0, 0xa8(r31)
    li      r0, 0x210
    lis     r3, 0x1
    sth     r0, 0xaa(r31)
    li      r4, 0x352
    li      r0, 0x412
    sth     r4, 0xac(r31)
    addi    r5, r3, 0x101
    li      r4, 0x258
    sth     r0, 0xae(r31)
    li      r3, 0x1a
    li      r0, 0x1
    sth     r6, 0xb0(r31)
    sth     r6, 0xb2(r31)
    stw     r5, 0xc0(r31)
    sth     r4, 0xc4(r31)
    stb     r3, 0x58(r31)
    stb     r0, 0x59(r31)
    stb     r0, 0x5a(r31)
    b       branch_0x8031267c

branch_0x803125fc:
    lhz     r0, 0x4e(r3)
    sth     r0, 0xa8(r31)
    lwz     r3, 0x4(r31)
    lhz     r0, 0x50(r3)
    sth     r0, 0xaa(r31)
    lwz     r3, 0x4(r31)
    lhz     r0, 0x52(r3)
    sth     r0, 0xac(r31)
    lwz     r3, 0x4(r31)
    lhz     r0, 0x54(r3)
    sth     r0, 0xae(r31)
    lwz     r3, 0x4(r31)
    lhz     r0, 0x56(r3)
    sth     r0, 0xb0(r31)
    lwz     r3, 0x4(r31)
    lhz     r0, 0x58(r3)
    sth     r0, 0xb2(r31)
    lwz     r3, 0x4(r31)
    lwz     r0, 0x68(r3)
    stw     r0, 0xc0(r31)
    lwz     r3, 0x4(r31)
    lhz     r0, 0x6c(r3)
    sth     r0, 0xc4(r31)
    lwz     r3, 0x4(r31)
    lbz     r0, 0x62(r3)
    stb     r0, 0x58(r31)
    lwz     r3, 0x4(r31)
    lbz     r0, 0x63(r3)
    stb     r0, 0x59(r31)
    lwz     r3, 0x4(r31)
    lbz     r0, 0x64(r3)
    stb     r0, 0x5a(r31)
branch_0x8031267c:
    li      r30, 0x0
    addi    r29, r30, 0x0
    li      r28, 0x0
branch_0x80312688:
    addi    r4, r30, 0x38
    add     r4, r31, r4
    lwz     r3, 0x0(r4)
    stw     r29, 0x0(r3)
    lwz     r3, 0x0(r4)
    bl      init__Q28JASystem11TOscillatorFv
    addi    r28, r28, 0x1
    cmplwi  r28, 0x4
    addi    r30, r30, 0x4
    blt+    branch_0x80312688
    li      r0, 0x0
    stb     r0, 0x2(r31)
    lhz     r3, 0xc6(r31)
    addi    r0, r3, 0x1
    sth     r0, 0xc6(r31)
    lhz     r0, 0xc6(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x803126d8
    li      r0, 0x1
    sth     r0, 0xc6(r31)
branch_0x803126d8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setOscillator__Q28JASystem8TChannelFUlPQ28JASystem11TOscillator
setOscillator__Q28JASystem8TChannelFUlPQ28JASystem11TOscillator: # 0x803126f8
    slwi    r0, r4, 2
    add     r3, r3, r0
    stw     r5, 0x38(r3)
    blr


.globl setOscInit__Q28JASystem8TChannelFUlPCQ38JASystem11TOscillator4Osc_
setOscInit__Q28JASystem8TChannelFUlPCQ38JASystem11TOscillator4Osc_: # 0x80312708
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    add     r4, r3, r0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x38(r4)
    stw     r5, 0x0(r3)
    lwz     r3, 0x38(r4)
    bl      initStart__Q28JASystem11TOscillatorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl forceStopOsc__Q28JASystem8TChannelFUl
forceStopOsc__Q28JASystem8TChannelFUl: # 0x8031273c
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    add     r3, r3, r0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x38(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80312768
    li      r0, 0x1
    b       branch_0x8031276c

branch_0x80312768:
    li      r0, 0x0
branch_0x8031276c:
    cmpwi   r0, 0x0
    beq-    branch_0x8031277c
    bl      forceStop__Q28JASystem11TOscillatorFv
    b       branch_0x80312780

branch_0x8031277c:
    li      r3, 0x0
branch_0x80312780:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl releaseOsc__Q28JASystem8TChannelFUl
releaseOsc__Q28JASystem8TChannelFUl: # 0x80312790
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    add     r3, r3, r0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x38(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803127bc
    li      r0, 0x1
    b       branch_0x803127c0

branch_0x803127bc:
    li      r0, 0x0
branch_0x803127c0:
    cmpwi   r0, 0x0
    beq-    branch_0x803127d0
    bl      release__Q28JASystem11TOscillatorFv
    b       branch_0x803127d4

branch_0x803127d0:
    li      r3, 0x0
branch_0x803127d4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl directReleaseOsc__Q28JASystem8TChannelFUlUs
directReleaseOsc__Q28JASystem8TChannelFUlUs: # 0x803127e4
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x38(r3)
    sth     r5, 0x18(r3)
    blr


.globl bankOscToOfs__Q28JASystem8TChannelFUl
bankOscToOfs__Q28JASystem8TChannelFUl: # 0x803127f8
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    add     r3, r3, r0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x38(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80312824
    li      r0, 0x1
    b       branch_0x80312828

branch_0x80312824:
    li      r0, 0x0
branch_0x80312828:
    cmpwi   r0, 0x0
    beq-    branch_0x80312838
    bl      getOffset__Q28JASystem11TOscillatorFv
    b       branch_0x8031283c

branch_0x80312838:
    lfs     f1, 0x6a8(rtoc)
branch_0x8031283c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl effectOsc__Q28JASystem8TChannelFUlf
effectOsc__Q28JASystem8TChannelFUlf: # 0x8031284c
    slwi    r0, r4, 2
    add     r4, r3, r0
    lwz     r4, 0x38(r4)
    lwz     r4, 0x0(r4)
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2
    beq-    branch_0x803128ac
    bge-    branch_0x8031287c
    cmpwi   r0, 0x0
    beq-    branch_0x8031289c
    bge-    branch_0x8031288c
    blr

branch_0x8031287c:
    cmpwi   r0, 0x4
    beq-    branch_0x803128bc
    bgelr-    

    b       branch_0x803128b4

branch_0x8031288c:
    lfs     f0, 0x8c(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(r3)
    blr

branch_0x8031289c:
    lfs     f0, 0x90(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(r3)
    blr

branch_0x803128ac:
    stfs    f1, 0x6c(r3)
    blr

branch_0x803128b4:
    stfs    f1, 0x78(r3)
    blr

branch_0x803128bc:
    stfs    f1, 0x84(r3)
    blr


.globl getOscState__Q28JASystem8TChannelCFUl
getOscState__Q28JASystem8TChannelCFUl: # 0x803128c4
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x38(r3)
    lbz     r3, 0x4(r3)
    blr


.globl isOsc__Q28JASystem8TChannelFUl
isOsc__Q28JASystem8TChannelFUl: # 0x803128d8
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x38(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803128f8
    li      r3, 0x1
    blr

branch_0x803128f8:
    li      r3, 0x0
    blr


.globl copyOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_
copyOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_: # 0x80312900
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x38(r3)
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80312920
    li      r0, 0x1
    b       branch_0x80312924

branch_0x80312920:
    li      r0, 0x0
branch_0x80312924:
    cmpwi   r0, 0x0
    beqlr-    

    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    blr


.globl overwriteOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_
overwriteOsc__Q28JASystem8TChannelFUlPQ38JASystem11TOscillator4Osc_: # 0x80312960
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    add     r31, r30, r0
    lwz     r3, 0x38(r31)
    stw     r5, 0x0(r3)
    lwzu    r3, 0x38(r31)
    bl      initStart__Q28JASystem11TOscillatorFv
    lwz     r3, 0x0(r31)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803129a8
    li      r0, 0x1
    b       branch_0x803129ac

branch_0x803129a8:
    li      r0, 0x0
branch_0x803129ac:
    cmpwi   r0, 0x0
    beq-    branch_0x803129bc
    bl      getOffset__Q28JASystem11TOscillatorFv
    b       branch_0x803129c0

branch_0x803129bc:
    lfs     f1, 0x6a8(rtoc)
branch_0x803129c0:
    lwz     r3, 0x0(r31)
    lwz     r3, 0x0(r3)
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80312a18
    bge-    branch_0x803129e8
    cmpwi   r0, 0x0
    beq-    branch_0x80312a08
    bge-    branch_0x803129f8
    b       branch_0x80312a2c

branch_0x803129e8:
    cmpwi   r0, 0x4
    beq-    branch_0x80312a28
    bge-    branch_0x80312a2c
    b       branch_0x80312a20

branch_0x803129f8:
    lfs     f0, 0x8c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(r30)
    b       branch_0x80312a2c

branch_0x80312a08:
    lfs     f0, 0x90(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(r30)
    b       branch_0x80312a2c

branch_0x80312a18:
    stfs    f1, 0x6c(r30)
    b       branch_0x80312a2c

branch_0x80312a20:
    stfs    f1, 0x78(r30)
    b       branch_0x80312a2c

branch_0x80312a28:
    stfs    f1, 0x84(r30)
branch_0x80312a2c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setKeySweepTarget__Q28JASystem8TChannelFUcUl
setKeySweepTarget__Q28JASystem8TChannelFUcUl: # 0x80312a44
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x80312a5c
    lwz     r6, 0x10(r3)
    cmplwi  r6, 0x0
    bne-    branch_0x80312a64
branch_0x80312a5c:
    clrlwi  r0, r4, 24
    b       branch_0x80312a74

branch_0x80312a64:
    clrlwi  r4, r4, 24
    lbz     r6, 0x2(r6)
    addi    r0, r4, 0x3c
    subf    r0, r6, r0
branch_0x80312a74:
    cmpwi   r0, 0x0
    bge-    branch_0x80312a84
    li      r0, 0x0
    b       branch_0x80312a90

branch_0x80312a84:
    cmpwi   r0, 0x7f
    ble-    branch_0x80312a90
    li      r0, 0x7f
branch_0x80312a90:
    lis     r4, 0x803e
    lfs     f0, 0x48(r3)
    slwi    r6, r0, 2
    addi    r0, r4, 0x2880
    add     r4, r0, r6
    lfs     f1, 0x0(r4)
    cmplwi  r5, 0x0
    fmuls   f1, f1, f0
    bne-    branch_0x80312ac4
    stfs    f1, 0x50(r3)
    li      r0, 0x0
    stw     r0, 0x2c(r3)
    blr

branch_0x80312ac4:
    stfs    f1, 0x94(r3)
    lis     r4, 0x8031
    addi    r0, r4, 0x1c50
    sth     r5, 0x9a(r3)
    stw     r0, 0x2c(r3)
    blr


.globl setPauseFlag__Q28JASystem8TChannelFUc
setPauseFlag__Q28JASystem8TChannelFUc: # 0x80312adc
    stb     r4, 0x2(r3)
    blr


.globl setPauseFlagReq__Q28JASystem8TChannelFUc
setPauseFlagReq__Q28JASystem8TChannelFUc: # 0x80312ae4
    stb     r4, 0x2(r3)
    li      r0, 0x1
    stb     r0, 0x3(r3)
    blr


.globl setPanPower__Q28JASystem8TChannelFffff
setPanPower__Q28JASystem8TChannelFffff: # 0x80312af4
    fadds   f4, f1, f2
    lfs     f0, 0x690(rtoc)
    fadds   f4, f3, f4
    fcmpu   cr0, f0, f4
    bne-    branch_0x80312b0c
    lfs     f4, 0x6a8(rtoc)
branch_0x80312b0c:
    fdivs   f0, f1, f4
    fdivs   f1, f2, f4
    stfs    f0, 0x5c(r3)
    fdivs   f0, f3, f4
    stfs    f1, 0x60(r3)
    stfs    f0, 0x64(r3)
    blr


.globl resetInitialVolume__Q28JASystem8TChannelFv
resetInitialVolume__Q28JASystem8TChannelFv: # 0x80312b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80312b50
    li      r3, 0x0
    b       branch_0x80312ba4

branch_0x80312b50:
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312b70
    lbz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312b70
    li      r0, 0x0
    b       branch_0x80312b74

branch_0x80312b70:
    li      r0, 0x1
branch_0x80312b74:
    cmpwi   r0, 0x0
    bne-    branch_0x80312b84
    li      r3, 0x0
    b       branch_0x80312ba4

branch_0x80312b84:
    mr      r3, r31
    bl      updateEffectorParam__Q28JASystem8TChannelFv
    mr      r3, r31
    bl      __UpdateJcToDSPInit__Q28JASystem6DriverFPQ28JASystem8TChannel
    lwz     r3, 0x20(r31)
    lwz     r3, 0xc(r3)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    li      r3, 0x1
branch_0x80312ba4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl play__Q28JASystem8TChannelFUl
play__Q28JASystem8TChannelFUl: # 0x80312bb8
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x80312bd8
    li      r4, -0x1
branch_0x80312bd8:
    stw     r4, 0x30(r31)
    lis     r3, 0x8031
    addi    r0, r3, 0x1d34
    lwz     r5, 0x30(r31)
    addi    r4, r31, 0x0
    li      r3, 0x0
    stw     r5, 0x34(r31)
    stw     r0, 0x28(r31)
    bl      alloc__Q28JASystem11TDSPChannelFUlUl
    stw     r3, 0x20(r31)
    lwz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312c78
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312c2c
    lbz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312c2c
    li      r0, 0x0
    b       branch_0x80312c30

branch_0x80312c2c:
    li      r0, 0x1
branch_0x80312c30:
    cmpwi   r0, 0x1
    bne-    branch_0x80312c78
    mr      r3, r31
    bl      enQueue__Q38JASystem6Driver8DSPQueueFPQ28JASystem8TChannel
    cmpwi   r3, 0x1
    beq-    branch_0x80312c60
    lwz     r3, 0x4(r31)
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    li      r3, 0x0
    b       branch_0x80312cc8

branch_0x80312c60:
    lwz     r3, 0x4(r31)
    addi    r4, r31, 0x0
    li      r5, 0x3
    bl      addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    li      r3, 0x1
    b       branch_0x80312cc8

branch_0x80312c78:
    mr      r3, r31
    bl      playLogicalChannel__Q28JASystem8TChannelFv
    cmpwi   r3, 0x0
    bne-    branch_0x80312cb4
    lwz     r3, 0x20(r31)
    mr      r4, r31
    bl      free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl
    li      r0, 0x0
    stw     r0, 0x20(r31)
    addi    r4, r31, 0x0
    li      r5, 0x0
    lwz     r3, 0x4(r31)
    bl      addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    li      r3, 0x0
    b       branch_0x80312cc8

branch_0x80312cb4:
    lwz     r3, 0x4(r31)
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      addListTail__Q28JASystem11TChannelMgrFPQ28JASystem8TChannelUl
    li      r3, 0x1
branch_0x80312cc8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stop__Q28JASystem8TChannelFUs
stop__Q28JASystem8TChannelFUs: # 0x80312cdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80312d00
    li      r4, 0x6
    bl      updatecallLogicalChannel__Q28JASystem6DriverFPQ28JASystem8TChannelUl
    b       branch_0x80312d24

branch_0x80312d00:
    clrlwi. r0, r4, 16
    bne-    branch_0x80312d14
    li      r4, 0x0
    bl      updatecallLogicalChannel__Q28JASystem6DriverFPQ28JASystem8TChannelUl
    b       branch_0x80312d24

branch_0x80312d14:
    lwz     r5, 0x38(r3)
    sth     r4, 0x18(r5)
    li      r4, 0x0
    bl      updatecallLogicalChannel__Q28JASystem6DriverFPQ28JASystem8TChannelUl
branch_0x80312d24:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateJcToDSP__Q28JASystem8TChannelFv
updateJcToDSP__Q28JASystem8TChannelFv: # 0x80312d34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __UpdateJcToDSP__Q28JASystem6DriverFPQ28JASystem8TChannel
    lwz     r3, 0x20(r31)
    lwz     r3, 0xc(r3)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl forceStopLogicalChannel__Q28JASystem8TChannelFv
forceStopLogicalChannel__Q28JASystem8TChannelFv: # 0x80312d6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80312d8c
    li      r3, 0x0
    b       branch_0x80312d94

branch_0x80312d8c:
    bl      forceStop__Q28JASystem11TDSPChannelFv
    li      r3, 0x1
branch_0x80312d94:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stopLogicalChannel__Q28JASystem8TChannelFv
stopLogicalChannel__Q28JASystem8TChannelFv: # 0x80312da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80312dd0
    li      r3, 0x0
    b       branch_0x80312dfc

branch_0x80312dd0:
    li      r31, 0x0
    stw     r31, 0x10(r3)
    lwz     r3, 0x20(r30)
    sth     r31, 0x6(r3)
    lwz     r3, 0x20(r30)
    bl      stop__Q28JASystem11TDSPChannelFv
    lwz     r3, 0x20(r30)
    mr      r4, r30
    bl      free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl
    stw     r31, 0x20(r30)
    li      r3, 0x1
branch_0x80312dfc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl playLogicalChannel__Q28JASystem8TChannelFv
playLogicalChannel__Q28JASystem8TChannelFv: # 0x80312e14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    lwz     r4, 0x20(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80312e48
    li      r3, 0x0
    b       branch_0x8031308c

branch_0x80312e48:
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312e68
    lbz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80312e68
    li      r0, 0x0
    b       branch_0x80312e6c

branch_0x80312e68:
    li      r0, 0x1
branch_0x80312e6c:
    cmpwi   r0, 0x0
    bne-    branch_0x80312e7c
    li      r3, 0x0
    b       branch_0x8031308c

branch_0x80312e7c:
    lis     r3, 0x8031
    addi    r0, r3, 0x21ac
    stw     r0, 0x10(r4)
    li      r0, 0x1
    lwz     r3, 0x20(r31)
    sth     r0, 0x6(r3)
    lbz     r0, 0xc(r31)
    lwz     r3, 0x20(r31)
    cmpwi   r0, 0x1
    lwz     r29, 0xc(r3)
    beq-    branch_0x80312ee4
    bge-    branch_0x80312eb8
    cmpwi   r0, 0x0
    bge-    branch_0x80312ec4
    b       branch_0x80312ee4

branch_0x80312eb8:
    cmpwi   r0, 0x3
    bge-    branch_0x80312ee4
    b       branch_0x80312ed8

branch_0x80312ec4:
    lwz     r4, 0x10(r31)
    mr      r3, r29
    lwz     r5, 0x14(r31)
    bl      setWaveInfo__Q38JASystem12DSPInterface9DSPBufferFPQ38JASystem6Driver5Wave_Ul
    b       branch_0x80312ee4

branch_0x80312ed8:
    mr      r3, r29
    lwz     r4, 0x14(r31)
    bl      setOscInfo__Q38JASystem12DSPInterface9DSPBufferFUl
branch_0x80312ee4:
    li      r30, 0x0
    b       branch_0x80312f6c

branch_0x80312eec:
    clrlslwi  r3, r30, 24, 1
    addi    r0, r3, 0xa8
    lhzx    r0, r31, r0
    sth     r0, 0x38(sp)
    bl      getOutputMode__Q28JASystem6DriverFv
    cmplwi  r3, 0x0
    bne-    branch_0x80312f3c
    lbz     r0, 0x38(sp)
    cmpwi   r0, 0x9
    beq-    branch_0x80312f30
    bge-    branch_0x80312f58
    cmpwi   r0, 0x8
    bge-    branch_0x80312f24
    b       branch_0x80312f58

branch_0x80312f24:
    li      r0, 0xb
    stb     r0, 0x38(sp)
    b       branch_0x80312f58

branch_0x80312f30:
    li      r0, 0x2
    stb     r0, 0x38(sp)
    b       branch_0x80312f58

branch_0x80312f3c:
    cmplwi  r3, 0x1
    bne-    branch_0x80312f58
    lbz     r0, 0x38(sp)
    cmplwi  r0, 0x8
    bne-    branch_0x80312f58
    li      r0, 0xb
    stb     r0, 0x38(sp)
branch_0x80312f58:
    lbz     r5, 0x38(sp)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      setBusConnect__Q38JASystem12DSPInterface9DSPBufferFUcUc
    addi    r30, r30, 0x1
branch_0x80312f6c:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x6
    blt+    branch_0x80312eec
    lwz     r0, 0x4(r31)
    li      r28, 0x0
    li      r30, 0x0
    stw     r0, 0x9c(r31)
branch_0x80312f88:
    addi    r29, r30, 0x38
    add     r29, r31, r29
    lwz     r3, 0x0(r29)
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80312fa8
    li      r0, 0x1
    b       branch_0x80312fac

branch_0x80312fa8:
    li      r0, 0x0
branch_0x80312fac:
    cmpwi   r0, 0x0
    beq-    branch_0x80313048
    cmplwi  r4, 0x0
    beq-    branch_0x80312fc4
    li      r0, 0x1
    b       branch_0x80312fc8

branch_0x80312fc4:
    li      r0, 0x0
branch_0x80312fc8:
    cmpwi   r0, 0x0
    beq-    branch_0x80312fd8
    bl      getOffset__Q28JASystem11TOscillatorFv
    b       branch_0x80312fdc

branch_0x80312fd8:
    lfs     f1, 0x6a8(rtoc)
branch_0x80312fdc:
    lwz     r3, 0x0(r29)
    lwz     r3, 0x0(r3)
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80313034
    bge-    branch_0x80313004
    cmpwi   r0, 0x0
    beq-    branch_0x80313024
    bge-    branch_0x80313014
    b       branch_0x80313048

branch_0x80313004:
    cmpwi   r0, 0x4
    beq-    branch_0x80313044
    bge-    branch_0x80313048
    b       branch_0x8031303c

branch_0x80313014:
    lfs     f0, 0x8c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(r31)
    b       branch_0x80313048

branch_0x80313024:
    lfs     f0, 0x90(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(r31)
    b       branch_0x80313048

branch_0x80313034:
    stfs    f1, 0x6c(r31)
    b       branch_0x80313048

branch_0x8031303c:
    stfs    f1, 0x78(r31)
    b       branch_0x80313048

branch_0x80313044:
    stfs    f1, 0x84(r31)
branch_0x80313048:
    addi    r28, r28, 0x1
    cmplwi  r28, 0x4
    addi    r30, r30, 0x4
    blt+    branch_0x80312f88
    mr      r3, r31
    bl      updateEffectorParam__Q28JASystem8TChannelFv
    mr      r3, r31
    bl      __UpdateJcToDSPInit__Q28JASystem6DriverFPQ28JASystem8TChannel
    lwz     r0, 0xc0(r31)
    lwz     r3, 0x20(r31)
    stb     r0, 0x3(r3)
    lhz     r0, 0xc4(r31)
    lwz     r3, 0x20(r31)
    sth     r0, 0x4(r3)
    lwz     r3, 0x20(r31)
    bl      play__Q28JASystem11TDSPChannelFv
    li      r3, 0x1
branch_0x8031308c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl updateEffectorParam__Q28JASystem8TChannelFv
updateEffectorParam__Q28JASystem8TChannelFv: # 0x803130ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0x9c(r3)
    lwz     r3, 0x4(r3)
    lfs     f29, 0x690(rtoc)
    cmplw   r0, r3
    bne-    branch_0x8031313c
    lfs     f0, 0x1c(r3)
    stfs    f0, 0xa0(r31)
    lwz     r3, 0x4(r31)
    lfs     f0, 0x18(r3)
    stfs    f0, 0xa4(r31)
    lwz     r3, 0x4(r31)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x70(r31)
    lwz     r3, 0x4(r31)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x7c(r31)
    lwz     r3, 0x4(r31)
    lfs     f0, 0x28(r3)
    stfs    f0, 0x88(r31)
    lwz     r3, 0x4(r31)
    lbz     r0, 0x62(r3)
    stb     r0, 0x58(r31)
    lwz     r3, 0x4(r31)
    lbz     r0, 0x63(r3)
    stb     r0, 0x59(r31)
    lwz     r3, 0x4(r31)
    lbz     r0, 0x64(r3)
    stb     r0, 0x5a(r31)
branch_0x8031313c:
    bl      getOutputMode__Q28JASystem6DriverFv
    cmpwi   r3, 0x1
    beq-    branch_0x80313184
    bge-    branch_0x80313158
    cmpwi   r3, 0x0
    bge-    branch_0x80313164
    b       branch_0x80313210

branch_0x80313158:
    cmpwi   r3, 0x3
    bge-    branch_0x80313210
    b       branch_0x803131c4

branch_0x80313164:
    lfs     f31, 0x694(rtoc)
    addi    r3, r31, 0x74
    lfs     f29, 0x690(rtoc)
    addi    r4, r31, 0x5c
    lbz     r5, 0x59(r31)
    bl      calcEffect__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
    fmr     f30, f1
    b       branch_0x80313210

branch_0x80313184:
    lbz     r5, 0x58(r31)
    cmplwi  r5, 0x0
    bne-    branch_0x80313198
    lfs     f31, 0x694(rtoc)
    b       branch_0x803131a8

branch_0x80313198:
    addi    r3, r31, 0x68
    addi    r4, r31, 0x5c
    bl      calcPan__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
    fmr     f31, f1
branch_0x803131a8:
    lbz     r5, 0x59(r31)
    addi    r3, r31, 0x74
    addi    r4, r31, 0x5c
    bl      calcEffect__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
    fmr     f30, f1
    lfs     f29, 0x690(rtoc)
    b       branch_0x80313210

branch_0x803131c4:
    lbz     r5, 0x58(r31)
    cmplwi  r5, 0x0
    bne-    branch_0x803131d8
    lfs     f31, 0x694(rtoc)
    b       branch_0x803131e8

branch_0x803131d8:
    addi    r3, r31, 0x68
    addi    r4, r31, 0x5c
    bl      calcPan__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
    fmr     f31, f1
branch_0x803131e8:
    lbz     r5, 0x59(r31)
    addi    r3, r31, 0x74
    addi    r4, r31, 0x5c
    bl      calcEffect__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
    fmr     f30, f1
    lbz     r5, 0x5a(r31)
    addi    r3, r31, 0x80
    addi    r4, r31, 0x5c
    bl      calcEffect__Q28JASystem6DriverFPCQ38JASystem6Driver10PanMatrix_PCQ38JASystem6Driver10PanMatrix_Uc
    fmr     f29, f1
branch_0x80313210:
    lfs     f5, 0x690(rtoc)
    lfs     f1, 0x54(r31)
    lfs     f0, 0x90(r31)
    fcmpo   cr0, f31, f5
    lfs     f2, 0xa4(r31)
    fmuls   f0, f1, f0
    fmuls   f1, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80313238
    b       branch_0x80313250

branch_0x80313238:
    lfs     f5, 0x6a8(rtoc)
    fcmpo   cr0, f31, f5
    cror    2, 1, 2
    bne-    branch_0x8031324c
    b       branch_0x80313250

branch_0x8031324c:
    fmr     f5, f31
branch_0x80313250:
    lfs     f6, 0x690(rtoc)
    fmr     f31, f5
    fcmpo   cr0, f30, f6
    cror    2, 0, 2
    bne-    branch_0x80313268
    b       branch_0x80313280

branch_0x80313268:
    lfs     f6, 0x6a8(rtoc)
    fcmpo   cr0, f30, f6
    cror    2, 1, 2
    bne-    branch_0x8031327c
    b       branch_0x80313280

branch_0x8031327c:
    fmr     f6, f30
branch_0x80313280:
    lfs     f4, 0x690(rtoc)
    fmr     f30, f6
    fcmpo   cr0, f29, f4
    cror    2, 0, 2
    bne-    branch_0x80313298
    b       branch_0x803132b0

branch_0x80313298:
    lfs     f4, 0x6a8(rtoc)
    fcmpo   cr0, f29, f4
    cror    2, 1, 2
    bne-    branch_0x803132ac
    b       branch_0x803132b0

branch_0x803132ac:
    fmr     f4, f29
branch_0x803132b0:
    lfs     f2, 0x50(r31)
    lfs     f0, 0x8c(r31)
    lfs     f3, 0xa0(r31)
    fmuls   f0, f2, f0
    lfs     f2, 0x6ac(rtoc)
    fmuls   f0, f3, f0
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    sth     r0, 0x98(r31)
    lhz     r0, 0xa8(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x803132fc
    fmr     f2, f31
    mr      r3, r31
    fmr     f3, f30
    bl      updateMixer__Q28JASystem6DriverFPQ28JASystem8TChannelffff
    b       branch_0x80313358

branch_0x803132fc:
    lfs     f0, 0x6a4(rtoc)
    lfs     f3, 0x6a0(rtoc)
    fmuls   f2, f0, f5
    lwz     r3, 0x20(r31)
    fmuls   f3, f3, f1
    lhz     r0, 0xaa(r31)
    fmuls   f1, f0, f4
    fmuls   f0, f0, f6
    lwz     r3, 0xc(r3)
    fctiwz  f3, f3
    clrlwi  r8, r0, 24
    fctiwz  f2, f2
    fctiwz  f1, f1
    stfd    f3, 0x30(sp)
    fctiwz  f0, f0
    stfd    f2, 0x28(sp)
    lwz     r4, 0x34(sp)
    stfd    f1, 0x20(sp)
    lwz     r5, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x24(sp)
    lwz     r7, 0x1c(sp)
    bl      setAutoMixer__Q38JASystem12DSPInterface9DSPBufferFUsUcUcUcUc
branch_0x80313358:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x58
    blr

