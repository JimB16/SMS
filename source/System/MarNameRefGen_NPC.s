
.globl getNameRef_NPC__14TMarNameRefGenCFPCc
getNameRef_NPC__14TMarNameRefGenCFPCc: # 0x802b0628
    mflr    r0
    lis     r3, 0x803a
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x7280
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0xe0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0688
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0680
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0680:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0688:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b06c8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b06c0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x2
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b06c0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b06c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0xf8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0708
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0700
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x3
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0700:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0708:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x104
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0748
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0740
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x4
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0740:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0748:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x110
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0788
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0780
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x5
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0780:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0788:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x11c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b07c8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b07c0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x6
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b07c0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b07c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x128
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0808
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0800
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x7
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0800:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0808:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x134
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0848
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0840
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x8
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0840:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0848:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x140
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0888
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0880
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x9
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0880:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0888:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x14c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b08c8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b08c0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0xa
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b08c0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b08c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x158
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0908
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0900
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0xb
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0900:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0908:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x164
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0948
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0940
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0xc
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0940:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0948:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x170
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0988
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0980
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0xd
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0980:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0988:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x17c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b09c8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b09c0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0xe
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b09c0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b09c8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x188
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0a08
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0a00
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0xf
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0a00:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0a08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x194
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0a48
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0a40
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x10
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0a40:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0a48:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1a0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0a88
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0a80
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x11
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0a80:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0a88:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1ac
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0ac8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0ac0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x12
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0ac0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0ac8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0b08
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0b00
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x13
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0b00:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0b08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1c4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0b48
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0b40
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x14
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0b40:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0b48:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1d0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0b88
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0b80
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x15
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0b80:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0b88:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0bc8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0bc0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x16
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0bc0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0bc8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0c08
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0c00
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x17
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0c00:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0c08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1f4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0c48
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0c40
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x18
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0c40:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0c48:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x200
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0c88
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0c80
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x19
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0c80:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0c88:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x210
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0cc8
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0cc0
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1a
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0cc0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0cc8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x220
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0d08
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0d00
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1b
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0d00:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0d08:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x230
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0d48
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0d40
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1c
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0d40:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0d48:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x23c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0d88
    li      r3, 0x234
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0d80
    lis     r4, 0x400
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1d
    subi    r5, rtoc, 0x90
    bl      __ct__8TBaseNPCFUlPCc
branch_0x802b0d80:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0d88:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x248
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0dcc
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0dc4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7510
    stw     r0, 0x0(r30)
branch_0x802b0dc4:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0dcc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x258
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0e10
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0e08
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7568
    stw     r0, 0x0(r30)
branch_0x802b0e08:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0e10:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x268
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0e54
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0e4c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x75c0
    stw     r0, 0x0(r30)
branch_0x802b0e4c:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0e54:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x278
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0e98
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0e90
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7618
    stw     r0, 0x0(r30)
branch_0x802b0e90:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0e98:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x288
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0edc
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0ed4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7670
    stw     r0, 0x0(r30)
branch_0x802b0ed4:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0edc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x298
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0f2c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0f24
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    subi    r0, r3, 0x76c8
    stw     r0, 0x0(r30)
branch_0x802b0f24:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0f2c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0f7c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0f74
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    subi    r0, r3, 0x6fe8
    stw     r0, 0x0(r30)
branch_0x802b0f74:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0f7c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b0fcc
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b0fc4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    subi    r0, r3, 0x7040
    stw     r0, 0x0(r30)
branch_0x802b0fc4:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b0fcc:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b101c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1014
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6f38
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    subi    r0, r3, 0x7098
    stw     r0, 0x0(r30)
branch_0x802b1014:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b101c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2d8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1060
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1058
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7720
    stw     r0, 0x0(r30)
branch_0x802b1058:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1060:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2e8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b10a4
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b109c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7778
    stw     r0, 0x0(r30)
branch_0x802b109c:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b10a4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x2f8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b10e8
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b10e0
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x77d0
    stw     r0, 0x0(r30)
branch_0x802b10e0:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b10e8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x308
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1138
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1130
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__18TMonteWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6f90
    lis     r3, 0x803e
    stw     r0, 0x0(r30)
    subi    r0, r3, 0x70f0
    stw     r0, 0x0(r30)
branch_0x802b1130:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1138:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x318
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b117c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1174
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6e0
    stw     r0, 0x0(r30)
branch_0x802b1174:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b117c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x328
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b11c0
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b11b8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7148
    stw     r0, 0x0(r30)
branch_0x802b11b8:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b11c0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x338
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1204
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b11fc
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x71a0
    stw     r0, 0x0(r30)
branch_0x802b11fc:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1204:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x348
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1248
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1240
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x71f8
    stw     r0, 0x0(r30)
branch_0x802b1240:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1248:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x358
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b128c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1284
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareMBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7250
    stw     r0, 0x0(r30)
branch_0x802b1284:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b128c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x368
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b12d0
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b12c8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x738
    stw     r0, 0x0(r30)
branch_0x802b12c8:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b12d0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x378
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1314
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b130c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x72a8
    stw     r0, 0x0(r30)
branch_0x802b130c:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1314:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x388
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1358
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1350
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__17TMareWBaseManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7300
    stw     r0, 0x0(r30)
branch_0x802b1350:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1358:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x398
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b139c
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1394
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__11TNPCManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7358
    stw     r0, 0x0(r30)
branch_0x802b1394:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b139c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b13e0
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b13d8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__11TNPCManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x73b0
    stw     r0, 0x0(r30)
branch_0x802b13d8:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b13e0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3b8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1424
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b141c
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__11TNPCManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7408
    stw     r0, 0x0(r30)
branch_0x802b141c:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1424:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3c8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1468
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1460
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__11TNPCManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7460
    stw     r0, 0x0(r30)
branch_0x802b1460:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1468:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3dc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b14ac
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b14a4
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__11TNPCManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x74b8
    stw     r0, 0x0(r30)
branch_0x802b14a4:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b14ac:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x3f0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b14f0
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b14e8
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__11TNPCManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x7910
    stw     r0, 0x0(r30)
branch_0x802b14e8:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b14f0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x404
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b1528
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1520
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__21TMareJellyFishManagerFPCc
branch_0x802b1520:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b1528:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x414
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802b156c
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802b1564
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x90
    bl      __ct__12TLiveManagerFPCc
    lis     r3, 0x803e
    subi    r0, r3, 0x6d50
    stw     r0, 0x0(r30)
branch_0x802b1564:
    mr      r3, r30
    b       branch_0x802b1570

branch_0x802b156c:
    li      r3, 0x0
branch_0x802b1570:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__13TMareWManagerFv
__dt__13TMareWManagerFv: # 0x802b1588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802b1600
    lis     r3, 0x803e
    subi    r0, r3, 0x738
    stw     r0, 0x0(r30)
    beq-    branch_0x802b15f0
    lis     r3, 0x803e
    subi    r0, r3, 0x7880
    stw     r0, 0x0(r30)
    beq-    branch_0x802b15f0
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x802b15f0
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x802b15f0:
    extsh.  r0, r31
    ble-    branch_0x802b1600
    mr      r3, r30
    bl      __dl__FPv
branch_0x802b1600:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TMareMManagerFv
__dt__13TMareMManagerFv: # 0x802b161c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802b1694
    lis     r3, 0x803e
    subi    r0, r3, 0x6e0
    stw     r0, 0x0(r30)
    beq-    branch_0x802b1684
    lis     r3, 0x803e
    subi    r0, r3, 0x7828
    stw     r0, 0x0(r30)
    beq-    branch_0x802b1684
    lis     r3, 0x803e
    subi    r0, r3, 0x6e30
    stw     r0, 0x0(r30)
    beq-    branch_0x802b1684
    lis     r3, 0x803e
    subi    r0, r3, 0x6dd8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x802b1684:
    extsh.  r0, r31
    ble-    branch_0x802b1694
    mr      r3, r30
    bl      __dl__FPv
branch_0x802b1694:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

