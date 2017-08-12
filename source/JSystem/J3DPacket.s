
.globl newDisplayList__17J3DDisplayListObjFUl
newDisplayList__17J3DDisplayListObjFUl: # 0x802ed87c
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    stwu    sp, -0x18(sp)
    li      r4, 0x20
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0xc(r3)
    lwz     r3, 0xc(r3)
    bl      __nwa__FUli
    stw     r3, 0x0(r31)
    li      r4, 0x20
    lwz     r3, 0xc(r31)
    bl      __nwa__FUli
    stw     r3, 0x4(r31)
    li      r0, 0x0
    stw     r0, 0x8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl callDL__17J3DDisplayListObjFv
callDL__17J3DDisplayListObjFv: # 0x802ed8d8
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r3)
    lwz     r4, 0x8(r4)
    bl      GXCallDisplayList
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isSame__9J3DPacketCFP12J3DMatPacket
isSame__9J3DPacketCFP12J3DMatPacket: # 0x802ed904
    li      r3, 0x0
    blr


.globl entry__9J3DPacketFP13J3DDrawBuffer
entry__9J3DPacketFP13J3DDrawBuffer: # 0x802ed90c
    li      r3, 0x1
    blr


.globl addChildPacket__9J3DPacketFP9J3DPacket
addChildPacket__9J3DPacketFP9J3DPacket: # 0x802ed914
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802ed928
    stw     r4, 0x8(r3)
    blr

branch_0x802ed928:
    stw     r0, 0x4(r4)
    stw     r4, 0x8(r3)
    blr


.globl draw__17J3DCallBackPacketFv
draw__17J3DCallBackPacketFv: # 0x802ed934
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x10(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x802ed968
    mtlr    r12
    addi    r3, r30, 0x0
    li      r4, 0x0
    blrl
branch_0x802ed968:
    lwz     r31, 0x8(r30)
    b       branch_0x802ed988

branch_0x802ed970:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x4(r31)
branch_0x802ed988:
    cmplwi  r31, 0x0
    bne+    branch_0x802ed970
    lwz     r12, 0x10(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x802ed9ac
    mtlr    r12
    addi    r3, r30, 0x0
    li      r4, 0x1
    blrl
branch_0x802ed9ac:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl draw__9J3DPacketFv
draw__9J3DPacketFv: # 0x802ed9c4
    blr


.globl __dt__9J3DPacketFv
__dt__9J3DPacketFv: # 0x802ed9c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802ed9fc
    lis     r3, __vvt__9J3DPacket@h
    addi    r3, r3, __vvt__9J3DPacket@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802ed9fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x802ed9fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13J3DDrawPacketFv
__dt__13J3DDrawPacketFv: # 0x802eda14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802eda58
    lis     r3, __vvt__13J3DDrawPacket@h
    addi    r0, r3, __vvt__13J3DDrawPacket@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802eda48
    lis     r3, __vvt__9J3DPacket@h
    addi    r0, r3, __vvt__9J3DPacket@l
    stw     r0, 0x0(r31)
branch_0x802eda48:
    extsh.  r0, r4
    ble-    branch_0x802eda58
    mr      r3, r31
    bl      __dl__FPv
branch_0x802eda58:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl draw__13J3DDrawPacketFv
draw__13J3DDrawPacketFv: # 0x802eda70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x30(r3)
    lwz     r3, 0x0(r4)
    lwz     r4, 0x8(r4)
    bl      GXCallDisplayList
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl beginDL__13J3DDrawPacketFv
beginDL__13J3DDrawPacketFv: # 0x802eda9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r4, 0x30(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r0, 0x0(r4)
    stw     r3, 0x4(r4)
    bl      OSDisableInterrupts
    stw     r3, R13Off_m0x5e08(r13)
    addi    r3, r31, 0x20
    lwz     r5, 0x30(r31)
    lwz     r4, 0x0(r5)
    lwz     r5, 0xc(r5)
    bl      GDInitGDLObj
    addi    r0, r31, 0x20
    stw     r0, R13Off_m0x5778(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl endDL__13J3DDrawPacketFv
endDL__13J3DDrawPacketFv: # 0x802edafc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      GDPadCurr32
    lwz     r3, R13Off_m0x5e08(r13)
    bl      OSRestoreInterrupts
    lwz     r4, 0x20(r31)
    lwz     r0, 0x28(r31)
    lwz     r3, 0x30(r31)
    subf    r0, r4, r0
    stw     r0, 0x8(r3)
    bl      GDFlushCurrToMem
    li      r0, 0x0
    stw     r0, R13Off_m0x5778(r13)
    lwz     r3, 0x30(r31)
    lwz     r3, 0x8(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12J3DMatPacketFv
__ct__12J3DMatPacketFv: # 0x802edb58
    lis     r4, __vvt__9J3DPacket@h
    addi    r0, r4, __vvt__9J3DPacket@l
    stw     r0, 0x0(r3)
    li      r6, 0x0
    lis     r5, __vvt__13J3DDrawPacket@h
    stw     r6, 0x4(r3)
    lis     r4, __vvt__12J3DMatPacket@h
    addi    r5, r5, __vvt__13J3DDrawPacket@l
    stw     r6, 0x8(r3)
    addi    r4, r4, __vvt__12J3DMatPacket@l
    li      r0, -0x1
    stw     r6, 0xc(r3)
    stw     r5, 0x0(r3)
    stw     r6, 0x10(r3)
    stw     r6, 0x30(r3)
    stw     r4, 0x0(r3)
    stw     r6, 0x38(r3)
    stw     r0, 0x3c(r3)
    stw     r6, 0x40(r3)
    stw     r6, 0x44(r3)
    blr


.globl __dt__12J3DMatPacketFv
__dt__12J3DMatPacketFv: # 0x802edbac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802edc00
    lis     r3, __vvt__12J3DMatPacket@h
    addi    r0, r3, __vvt__12J3DMatPacket@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802edbf0
    lis     r3, __vvt__13J3DDrawPacket@h
    addi    r0, r3, __vvt__13J3DDrawPacket@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802edbf0
    lis     r3, __vvt__9J3DPacket@h
    addi    r0, r3, __vvt__9J3DPacket@l
    stw     r0, 0x0(r31)
branch_0x802edbf0:
    extsh.  r0, r4
    ble-    branch_0x802edc00
    mr      r3, r31
    bl      __dl__FPv
branch_0x802edc00:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl addShapePacket__12J3DMatPacketFP14J3DShapePacket
addShapePacket__12J3DMatPacketFP14J3DShapePacket: # 0x802edc18
    lwz     r0, 0x34(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802edc2c
    stw     r4, 0x34(r3)
    blr

branch_0x802edc2c:
    stw     r0, 0x4(r4)
    stw     r4, 0x34(r3)
    blr


.globl draw__12J3DMatPacketFv
draw__12J3DMatPacketFv: # 0x802edc38
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x34(r3)
    b       branch_0x802edc70

branch_0x802edc58:
    lbz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802edc6c
    li      r4, 0x0
    b       branch_0x802edc78

branch_0x802edc6c:
    lwz     r3, 0x4(r3)
branch_0x802edc70:
    cmplwi  r3, 0x0
    bne+    branch_0x802edc58
branch_0x802edc78:
    clrlwi. r0, r4, 24
    bne-    branch_0x802edcc4
    lis     r3, j3dSys@h
    lwz     r0, 0x40(r31)
    addi    r3, r3, j3dSys@l
    stw     r0, 0x54(r3)
    stw     r31, 0x3c(r3)
    lwz     r3, 0x38(r31)
    bl      load__11J3DMaterialFv
    lwz     r31, 0x34(r31)
    b       branch_0x802edcbc

branch_0x802edca4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r31, 0x4(r31)
branch_0x802edcbc:
    cmplwi  r31, 0x0
    bne+    branch_0x802edca4
branch_0x802edcc4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__14J3DShapePacketFv
__ct__14J3DShapePacketFv: # 0x802edcd8
    lis     r4, __vvt__9J3DPacket@h
    addi    r0, r4, __vvt__9J3DPacket@l
    stw     r0, 0x0(r3)
    li      r7, 0x0
    lis     r5, __vvt__17J3DCallBackPacket@h
    stw     r7, 0x4(r3)
    addi    r6, r5, __vvt__17J3DCallBackPacket@l
    lis     r4, __vvt__14J3DShapePacket@h
    stw     r7, 0x8(r3)
    addi    r5, r4, __vvt__14J3DShapePacket@l
    addi    r4, r13, R13Off_m0x5e88
    stw     r7, 0xc(r3)
    li      r0, 0x1
    stw     r6, 0x0(r3)
    stw     r7, 0x10(r3)
    stw     r5, 0x0(r3)
    stw     r7, 0x14(r3)
    stw     r7, 0x18(r3)
    stw     r7, 0x1c(r3)
    stw     r4, 0x20(r3)
    stw     r7, 0x24(r3)
    stw     r7, 0x28(r3)
    stw     r7, 0x2c(r3)
    stb     r0, 0x30(r3)
    blr


.globl __dt__17J3DCallBackPacketFv
__dt__17J3DCallBackPacketFv: # 0x802edd3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802edd80
    lis     r3, __vvt__17J3DCallBackPacket@h
    addi    r0, r3, __vvt__17J3DCallBackPacket@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802edd70
    lis     r3, __vvt__9J3DPacket@h
    addi    r0, r3, __vvt__9J3DPacket@l
    stw     r0, 0x0(r31)
branch_0x802edd70:
    extsh.  r0, r4
    ble-    branch_0x802edd80
    mr      r3, r31
    bl      __dl__FPv
branch_0x802edd80:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14J3DShapePacketFv
__dt__14J3DShapePacketFv: # 0x802edd98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802eddec
    lis     r3, __vvt__14J3DShapePacket@h
    addi    r0, r3, __vvt__14J3DShapePacket@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802edddc
    lis     r3, __vvt__17J3DCallBackPacket@h
    addi    r0, r3, __vvt__17J3DCallBackPacket@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802edddc
    lis     r3, __vvt__9J3DPacket@h
    addi    r0, r3, __vvt__9J3DPacket@l
    stw     r0, 0x0(r31)
branch_0x802edddc:
    extsh.  r0, r4
    ble-    branch_0x802eddec
    mr      r3, r31
    bl      __dl__FPv
branch_0x802eddec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl draw__14J3DShapePacketFv
draw__14J3DShapePacketFv: # 0x802ede04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802edeb4
    lbz     r0, 0x30(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802edeb4
    lwz     r12, 0x10(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x802ede4c
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x0
    blrl
branch_0x802ede4c:
    lis     r3, j3dSys@h
    lwz     r0, 0x24(r31)
    addi    r3, r3, j3dSys@l
    stw     r0, 0x10c(r3)
    lwz     r0, 0x28(r31)
    stw     r0, 0x110(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x114(r3)
    lwz     r0, 0x18(r31)
    lwz     r3, 0x14(r31)
    stw     r0, 0x50(r3)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x14(r31)
    stw     r0, 0x54(r3)
    lwz     r0, 0x20(r31)
    lwz     r3, 0x14(r31)
    stw     r0, 0x58(r3)
    lwz     r3, 0x14(r31)
    bl      draw__8J3DShapeCFv
    lwz     r12, 0x10(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x802edeb4
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x1
    blrl
branch_0x802edeb4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isSame__12J3DMatPacketCFP12J3DMatPacket
isSame__12J3DMatPacketCFP12J3DMatPacket: # 0x802edec8
    lwz     r5, 0x3c(r3)
    li      r3, 0x0
    lwz     r0, 0x3c(r4)
    cmplw   r5, r0
    bnelr-    

    srwi.   r0, r5, 31
    bnelr-    

    li      r3, 0x1
    blr

