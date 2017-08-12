
.globl isSlopeCameraMode__15CPolarSubCameraCFv
isSlopeCameraMode__15CPolarSubCameraCFv: # 0x80033738
    lwz     r0, 0x50(r3)
    li      r3, 0x0
    cmplwi  r0, 0x48
    bgtlr-    

    lis     r4, unk_803ad43c@ha
    addi    r4, r4, unk_803ad43c@l
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x80033760:
    li      r3, 0x1
    blr


.globl isOverHipAttackSpecifyMode__15CPolarSubCameraCFi
isOverHipAttackSpecifyMode__15CPolarSubCameraCFi: # 0x80033768
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x1
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800337b8
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800337b8
    li      r31, 0x0
branch_0x800337b8:
    clrlwi. r0, r31, 24
    beq-    branch_0x800337c8
    li      r30, 0x1
    b       branch_0x800337f0

branch_0x800337c8:
    addi    r0, r29, -0x8
    cmplwi  r0, 0x40
    bgt-    branch_0x800337f0
    lis     r3, unk_803ad560@ha
    addi    r3, r3, unk_803ad560@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x800337ec:
    li      r30, 0x1
branch_0x800337f0:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033814
    cmpwi   r4, 0x26
    li      r3, 0x0
    bge-    branch_0x80033838
    cmpwi   r4, 0x9
    beq-    branch_0x80033840
    bltlr-    

    cmpwi   r4, 0x1e
    bge-    branch_0x80033840
    blr

branch_0x80033838:
    cmpwi   r4, 0x3b
    bnelr-    

branch_0x80033840:
    li      r3, 0x1
    blr


.globl isFixCameraSpecifyMode__15CPolarSubCameraCFi
isFixCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033848
    cmpwi   r4, 0x3a
    li      r3, 0x0
    beq-    branch_0x80033868
    bgelr-    

    cmpwi   r4, 0x1e
    bgelr-    

    cmpwi   r4, 0x16
    bltlr-    

branch_0x80033868:
    li      r3, 0x1
    blr


.globl isRailCameraSpecifyMode__15CPolarSubCameraCFi
isRailCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033870
    li      r3, 0x0
    blr


.globl isFollowCameraSpecifyMode__15CPolarSubCameraCFi
isFollowCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033878
    cmpwi   r4, 0x37
    li      r3, 0x0
    bge-    branch_0x8003389c
    cmpwi   r4, 0x0
    beq-    branch_0x800338ac
    bltlr-    

    cmpwi   r4, 0x35
    bge-    branch_0x800338ac
    blr

branch_0x8003389c:
    cmpwi   r4, 0x47
    bgelr-    

    cmpwi   r4, 0x45
    bltlr-    

branch_0x800338ac:
    li      r3, 0x1
    blr


.globl isTowerCameraSpecifyMode__15CPolarSubCameraCFi
isTowerCameraSpecifyMode__15CPolarSubCameraCFi: # 0x800338b4
    cmpwi   r4, 0x37
    li      r3, 0x0
    beq-    branch_0x800338e0
    bge-    branch_0x800338d8
    cmpwi   r4, 0x2a
    bgelr-    

    cmpwi   r4, 0x27
    bge-    branch_0x800338e0
    blr

branch_0x800338d8:
    cmpwi   r4, 0x41
    bnelr-    

branch_0x800338e0:
    li      r3, 0x1
    blr


.globl isNormalCameraCompletely__15CPolarSubCameraCFv
isNormalCameraCompletely__15CPolarSubCameraCFv: # 0x800338e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r4, 0x50(r3)
    bl      isNormalCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8003395c
    mr      r3, r30
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80033958
    lwz     r0, 0x54(r30)
    li      r4, 0x0
    cmplwi  r0, 0x48
    bgt-    branch_0x80033950
    lis     r3, unk_803ad664@ha
    addi    r3, r3, unk_803ad664@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8003394c:
    li      r4, 0x1
branch_0x80033950:
    clrlwi. r0, r4, 24
    beq-    branch_0x8003395c
branch_0x80033958:
    li      r31, 0x1
branch_0x8003395c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isNormalCameraSpecifyMode__15CPolarSubCameraCFi
isNormalCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033978
    cmplwi  r4, 0x48
    li      r3, 0x0
    bgtlr-    

    lis     r5, unk_803ad788@ha
    addi    r5, r5, unk_803ad788@l
    slwi    r0, r4, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr       
branch_0x8003399c:
    li      r3, 0x1
    blr


.globl isTalkCameraInbetween__15CPolarSubCameraCFv
isTalkCameraInbetween__15CPolarSubCameraCFv: # 0x800339a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80033a80
    lwz     r0, 0x50(r30)
    li      r3, 0x0
    cmpwi   r0, 0x2d
    beq-    branch_0x80033a18
    bge-    branch_0x80033a04
    cmpwi   r0, 0xb
    beq-    branch_0x80033a1c
    bge-    branch_0x800339f8
    cmpwi   r0, 0xa
    bge-    branch_0x80033a18
    b       branch_0x80033a1c

branch_0x800339f8:
    cmpwi   r0, 0xd
    bge-    branch_0x80033a1c
    b       branch_0x80033a18

branch_0x80033a04:
    cmpwi   r0, 0x41
    bge-    branch_0x80033a1c
    cmpwi   r0, 0x3f
    bge-    branch_0x80033a18
    b       branch_0x80033a1c

branch_0x80033a18:
    li      r3, 0x1
branch_0x80033a1c:
    clrlwi. r0, r3, 24
    bne-    branch_0x80033a7c
    lwz     r0, 0x54(r30)
    li      r3, 0x0
    cmpwi   r0, 0x2d
    beq-    branch_0x80033a70
    bge-    branch_0x80033a5c
    cmpwi   r0, 0xb
    beq-    branch_0x80033a74
    bge-    branch_0x80033a50
    cmpwi   r0, 0xa
    bge-    branch_0x80033a70
    b       branch_0x80033a74

branch_0x80033a50:
    cmpwi   r0, 0xd
    bge-    branch_0x80033a74
    b       branch_0x80033a70

branch_0x80033a5c:
    cmpwi   r0, 0x41
    bge-    branch_0x80033a74
    cmpwi   r0, 0x3f
    bge-    branch_0x80033a70
    b       branch_0x80033a74

branch_0x80033a70:
    li      r3, 0x1
branch_0x80033a74:
    clrlwi. r0, r3, 24
    beq-    branch_0x80033a80
branch_0x80033a7c:
    li      r31, 0x1
branch_0x80033a80:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl isTalkCameraSpecifyMode__15CPolarSubCameraCFi
isTalkCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033a9c
    cmpwi   r4, 0x2d
    li      r3, 0x0
    beq-    branch_0x80033ae0
    bge-    branch_0x80033ad0
    cmpwi   r4, 0xb
    beqlr-    

    bge-    branch_0x80033ac4
    cmpwi   r4, 0xa
    bge-    branch_0x80033ae0
    blr

branch_0x80033ac4:
    cmpwi   r4, 0xd
    bgelr-    

    b       branch_0x80033ae0

branch_0x80033ad0:
    cmpwi   r4, 0x41
    bgelr-    

    cmpwi   r4, 0x3f
    bltlr-    

branch_0x80033ae0:
    li      r3, 0x1
    blr


.globl isJetCoaster1stCamera__15CPolarSubCameraCFv
isJetCoaster1stCamera__15CPolarSubCameraCFv: # 0x80033ae8
    lwz     r0, 0x50(r3)
    li      r4, 0x0
    cmpwi   r0, 0x2e
    bne-    branch_0x80033b14
    lwz     r3, 0x2b8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80033b14
    lbz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80033b14
    li      r4, 0x1
branch_0x80033b14:
    mr      r3, r4
    blr


.globl isLButtonCameraInbetween__15CPolarSubCameraCFv
isLButtonCameraInbetween__15CPolarSubCameraCFv: # 0x80033b1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      isNowInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80033b88
    lwz     r0, 0x50(r30)
    li      r3, 0x0
    cmpwi   r0, 0x7
    beq-    branch_0x80033b58
    b       branch_0x80033b5c

branch_0x80033b58:
    li      r3, 0x1
branch_0x80033b5c:
    clrlwi. r0, r3, 24
    bne-    branch_0x80033b84
    lwz     r0, 0x54(r30)
    li      r3, 0x0
    cmpwi   r0, 0x7
    beq-    branch_0x80033b78
    b       branch_0x80033b7c

branch_0x80033b78:
    li      r3, 0x1
branch_0x80033b7c:
    clrlwi. r0, r3, 24
    beq-    branch_0x80033b88
branch_0x80033b84:
    li      r31, 0x1
branch_0x80033b88:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
isLButtonCameraSpecifyMode__15CPolarSubCameraCFi: # 0x80033ba4
    cmpwi   r4, 0x7
    li      r3, 0x0
    bnelr-    

    li      r3, 0x1
    blr

