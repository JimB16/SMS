
.globl init__Q28JASystem6DriverFv
init__Q28JASystem6DriverFv: # 0x803140cc
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS
    bl      initBuffer__Q28JASystem12DSPInterfaceFv
    bl      initAll__Q28JASystem11TDSPChannelFv
    bl      init__Q28JASystem8ChGlobalFv
    lwz     r3, R13Off_m0x7414(r13)
    bl      init__Q38JASystem6Driver8DSPQueueFUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMixerLevel__Q28JASystem6DriverFff
setMixerLevel__Q28JASystem6DriverFff: # 0x80314104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lfs     f0, 0x6c0(r2)
    fmuls   f0, f0, f1
    fmr     f1, f2
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    sth     r0, -0x7420(r13)
    bl      DsetMixerLevel__Ff
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getMixerLevel__Q28JASystem6DriverFv
getMixerLevel__Q28JASystem6DriverFv: # 0x80314140
    lhz     r3, -0x7420(r13)
    blr


.globl setOutputMode__Q28JASystem6DriverFUl
setOutputMode__Q28JASystem6DriverFUl: # 0x80314148
    stw     r3, R13Off_m0x741c(r13)
    blr


.globl getOutputMode__Q28JASystem6DriverFv
getOutputMode__Q28JASystem6DriverFv: # 0x80314150
    lwz     r3, R13Off_m0x741c(r13)
    blr


.globl getUpdateInterval__Q28JASystem6DriverFv
getUpdateInterval__Q28JASystem6DriverFv: # 0x80314158
    lbz     r3, R13Off_m0x7418(r13)
    blr

