
.globl TRKSaveExtended1Block
TRKSaveExtended1Block: # 0x80341334
    lis     r2, gTRKCPUState@h
    ori     r2, r2, gTRKCPUState@l
    mfsr    r16, 0
    mfsr    r17, 1
    mfsr    r18, 2
    mfsr    r19, 3
    mfsr    r20, 4
    mfsr    r21, 5
    mfsr    r22, 6
    mfsr    r23, 7
    mfsr    r24, 8
    mfsr    r25, 9
    mfsr    r26, 10
    mfsr    r27, 11
    mfsr    r28, 12
    mfsr    r29, 13
    mfsr    r30, 14
    mfsr    r31, 15
    stmw    r16, 0x1a8(r2)
    mftb    r10, 268
    mftb    r11, 269
    mfspr   r12, 1008
    mfspr   r13, 1009
    mfspr   r14, 27
    mfspr   r15, 287
    mfspr   r16, 528
    mfspr   r17, 529
    mfspr   r18, 530
    mfspr   r19, 531
    mfspr   r20, 532
    mfspr   r21, 533
    mfspr   r22, 534
    mfspr   r23, 535
    mfspr   r24, 536
    mfspr   r25, 537
    mfspr   r26, 538
    mfspr   r27, 539
    mfspr   r28, 540
    mfspr   r29, 541
    mfspr   r30, 542
    mfspr   r31, 543
    stmw    r10, 0x1e8(r2)
    mfspr   r22, 25
    mfspr   r23, 19
    mfspr   r24, 18
    mfspr   r25, 272
    mfspr   r26, 273
    mfspr   r27, 274
    mfspr   r28, 275
    li      r29, 0x0
    mfspr   r30, 1010
    mfspr   r31, 282
    stmw    r22, 0x25c(r2)
    mfspr   r20, 912
    mfspr   r21, 913
    mfspr   r22, 914
    mfspr   r23, 915
    mfspr   r24, 916
    mfspr   r25, 917
    mfspr   r26, 918
    mfspr   r27, 919
    mfspr   r28, 920
    mfspr   r29, 921
    mfspr   r30, 922
    mfspr   r31, 923
    stmw    r20, 0x2fc(r2)
    b       branch_0x80341484

branch_0x80341440:
    mfspr   r16, 928
    mfspr   r17, 935
    mfspr   r18, 936
    mfspr   r19, 937
    mfspr   r20, 938
    mfspr   r21, 939
    mfspr   r22, 940
    mfspr   r23, 941
    mfspr   r24, 942
    mfspr   r25, 943
    mfspr   r26, 944
    mfspr   r27, 951
    mfspr   r28, 959
    mfspr   r29, 1014
    mfspr   r30, 1015
    mfspr   r31, 1023
    stmw    r16, 0x2b8(r2)
branch_0x80341484:
    mfspr   r19, 1013
    mfspr   r20, 953
    mfspr   r21, 954
    mfspr   r22, 957
    mfspr   r23, 958
    mfspr   r24, 955
    mfspr   r25, 952
    mfspr   r26, 956
    mfspr   r27, 1020
    mfspr   r28, 1021
    mfspr   r29, 1022
    mfspr   r30, 1019
    mfspr   r31, 1017
    stmw    r19, 0x284(r2)
    b       branch_0x803414e8

branch_0x803414c0:
    mfspr   r25, 976
    mfspr   r26, 977
    mfspr   r27, 978
    mfspr   r28, 979
    mfspr   r29, 980
    mfspr   r30, 981
    mfspr   r31, 982
    stmw    r25, 0x240(r2)
    mfspr   r31, 22
    stw     r31, R2Off_0x278(r2)
branch_0x803414e8:
    blr


.globl TRKRestoreExtended1Block
TRKRestoreExtended1Block: # 0x803414ec
    lis     r2, gTRKCPUState@h
    ori     r2, r2, gTRKCPUState@l
    lis     r5, gTRKRestoreFlags@h
    ori     r5, r5, gTRKRestoreFlags@l
    lbz     r3, 0x0(r5)
    lbz     r6, 0x1(r5)
    li      r0, 0x0
    stb     r0, 0x0(r5)
    stb     r0, 0x1(r5)
    cmpwi   r3, 0x0
    beq-    branch_0x80341528
    lwz     r24, R2Off_0x1e8(r2)
    lwz     r25, R2Off_0x1ec(r2)
    mtspr   284, r24
    mtspr   285, r25
branch_0x80341528:
    lmw     r20, 0x2fc(r2)
    mtspr   912, r20
    mtspr   913, r21
    mtspr   914, r22
    mtspr   915, r23
    mtspr   916, r24
    mtspr   917, r25
    mtspr   918, r26
    mtspr   919, r27
    mtspr   920, r28
    mtspr   922, r30
    mtspr   923, r31
    b       branch_0x80341574

branch_0x8034155c:
    lmw     r26, 0x2e0(r2)
    mtspr   944, r26
    mtspr   951, r27
    mtspr   1014, r29
    mtspr   1015, r30
    mtspr   1023, r31
branch_0x80341574:
    lmw     r19, 0x284(r2)
    mtspr   1013, r19
    mtspr   953, r20
    mtspr   954, r21
    mtspr   957, r22
    mtspr   958, r23
    mtspr   955, r24
    mtspr   952, r25
    mtspr   956, r26
    mtspr   1020, r27
    mtspr   1021, r28
    mtspr   1022, r29
    mtspr   1019, r30
    mtspr   1017, r31
    b       branch_0x803415e0

branch_0x803415b0:
    cmpwi   r6, 0x0
    beq-    branch_0x803415c0
    lwz     r26, R2Off_0x278(r2)
    mtspr   22, r26
branch_0x803415c0:
    lmw     r25, 0x240(r2)
    mtspr   976, r25
    mtspr   977, r26
    mtspr   978, r27
    mtspr   979, r28
    mtspr   980, r29
    mtspr   981, r30
    mtspr   982, r31
branch_0x803415e0:
    lmw     r16, 0x1a8(r2)
    mtsr    0, r16
    mtsr    1, r17
    mtsr    2, r18
    mtsr    3, r19
    mtsr    4, r20
    mtsr    5, r21
    mtsr    6, r22
    mtsr    7, r23
    mtsr    8, r24
    mtsr    9, r25
    mtsr    10, r26
    mtsr    11, r27
    mtsr    12, r28
    mtsr    13, r29
    mtsr    14, r30
    mtsr    15, r31
    lmw     r12, 0x1f0(r2)
    mtspr   1008, r12
    mtspr   1009, r13
    mtspr   27, r14
    mtspr   287, r15
    mtspr   528, r16
    mtspr   529, r17
    mtspr   530, r18
    mtspr   531, r19
    mtspr   532, r20
    mtspr   533, r21
    mtspr   534, r22
    mtspr   535, r23
    mtspr   536, r24
    mtspr   537, r25
    mtspr   538, r26
    mtspr   539, r27
    mtspr   540, r28
    mtspr   541, r29
    mtspr   542, r30
    mtspr   543, r31
    lmw     r22, 0x25c(r2)
    mtspr   25, r22
    mtspr   19, r23
    mtspr   18, r24
    mtspr   272, r25
    mtspr   273, r26
    mtspr   274, r27
    mtspr   275, r28
    mtspr   1010, r30
    mtspr   282, r31
    blr


.globl TRKTargetCPUMinorType
TRKTargetCPUMinorType: # 0x803416a4
    li      r3, 0x54
    blr

