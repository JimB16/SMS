
/**********************
Offsets (used with r13 (=0x804141C0 =R13Address))
**********************/
.equ OffsetR13_7204,    -0x7204 # 0x8040cfbc
.equ OffsetR13_7203,    -0x7203 # 0x8040cfbd
.equ OffsetR13_7202,    -0x7202 # 0x8040cfbe
.equ OffsetR13_7201,    -0x7201 # 0x8040cfbf
.equ OffsetR13_7200,    -0x7200 # 0x8040cfc0
.equ OffsetR13_71ff,    -0x71ff # 0x8040cfc1
.equ OffsetR13_71fe,    -0x71fe # 0x8040cfc2
.equ OffsetR13_71fd,    -0x71fd # 0x8040cfc3
.equ OffsetR13_71fc,    -0x71fc # 0x8040cfc4
.equ OffsetR13_71fb,    -0x71fb # 0x8040cfc5
.equ OffsetR13_71fa,    -0x71fa # 0x8040cfc6
.equ OffsetR13_71f9,    -0x71f9 # 0x8040cfc7
.equ OffsetR13_71f8,    -0x71f8 # 0x8040cfc8
.equ OffsetR13_71f7,    -0x71f7 # 0x8040cfc9
.equ OffsetR13_71f6,    -0x71f6 # 0x8040cfca
.equ gpCamera,          -0x7118 # 0x8040d0a8
.equ gpSunManager,      -0x7100 # 0x8040d0c0
.equ gpSunModel,        -0x70f8 # 0x8040d0c8
.equ CubeManager0,      -0x70f0 # 0x8040d0d0
.equ CubeManager1,      -0x70ec # 0x8040d0d4
.equ CubeManager2,      -0x70e8 # 0x8040d0d8
.equ CubeManager3,      -0x70e4 # 0x8040d0dc
.equ CubeManager4,      -0x70e0 # 0x8040d0e0
.equ CubeManager5,      -0x70dc # 0x8040d0e4
.equ CubeManager6,      -0x70d8 # 0x8040d0e8
.equ CubeManager7,      -0x70d4 # 0x8040d0ec
.equ CubeManager8,      -0x70d0 # 0x8040d0f0
.equ CubeManager9,      -0x70cc # 0x8040d0f4
.equ CubeManager10,     -0x70c8 # 0x8040d0f8
.equ OffsetR13_70c0,    -0x70c0 # 0x8040d100
.equ OffsetR13_70b0,    -0x70b0 # 0x8040d110
.equ TalkManager,       -0x63e8 # 0x8040ddd8
.equ gpMap,             -0x6328 # 0x8040de98
.equ gpPollution,       -0x62f0 # 0x8040ded0
.equ gpItemManager,     -0x62b0 # 0x8040df10
.equ gpMapObjWave,      -0x626c # 0x8040df54
.equ gpPoolManager,     -0x6230 # 0x8040df90
.equ gpStrategy,        -0x6140 # 0x8040e080
.equ LightCommon,       -0x610c # 0x8040e0bc
.equ OffsetR13_60e0,    -0x60e0 # 0x8040e0e0 MarioActor?
.equ MarioActor,        -0x60d8 # 0x8040e0e8 gpMarioOriginal
.equ MarioHitActor,     -0x60b8 # 0x8040e108 gpMarioAddress
.equ MarioHitActorPos,  -0x60b4 # 0x8040e10c
.equ MarioAngleX,       -0x60b0 # 0x8040e110
.equ MarioAngleY,       -0x60ac # 0x8040e114
.equ MarioAngleZ,       -0x60a8 # 0x8040e118
.equ MarioSpeedX,       -0x60a4 # 0x8040e11c
.equ MarioSpeedY,       -0x60a0 # 0x8040e120
.equ MarioSpeedZ,       -0x609c # 0x8040e124
.equ MarioLightID,      -0x6098 # 0x8040e128
.equ MarioFlags,        -0x6094 # 0x8040e12c
.equ MarioThrowPower,   -0x6090 # 0x8040e130
.equ MarioGroundPlane,  -0x608c # 0x8040e134
.equ gpModelWaterManager, -0x6088 # 0x8040e138
.equ gpMarioParticleManager, -0x6070 # 0x8040e150
.equ gpMarDirector,     -0x6048 # 0x8040e178
.equ gpMSound,          -0x6044 # 0x8040e17c
.equ gpSystemFont,      -0x6038 # 0x8040e188
.equ gpRomFont,         -0x6034 # 0x8040e18c
.equ OffsetR13_6000,    -0x6000 # 0x8040e1c0
.equ OffsetR13_5fa0,    -0x5fa0 # 0x8040e220


/**********************
HitActor
**********************/
.equ HitActor_0,            0x0
.equ HitActor_20,           0x20
.equ HitActor_24,           0x24
.equ HitActor_28,           0x28
.equ HitActor_2c,           0x2c
.equ HitActor_30,           0x30
.equ HitActor_34,           0x34
.equ HitActor_38,           0x38
.equ HitActor_3c,           0x3c
.equ HitActor_40,           0x40
.equ HitActor_44,           0x44
.equ HitActor_48,           0x48
.equ HitActor_4a,           0x4a
.equ HitActor_4c,           0x4c
.equ HitActor_50,           0x50
.equ HitActor_54,           0x54
.equ HitActor_58,           0x58
.equ HitActor_5c,           0x5c
.equ HitActor_60,           0x60
.equ HitActor_64,           0x64

/**********************
MarioActor (HitActor)
**********************/
.equ MarioActor_Size,       0x4290
.equ MarioActor_Type,       0x0
.equ MarioActor_Type_a0,        0xa0
.equ MarioActor_Type_c0,        0xc0 # FunctionPtr
.equ MarioActor_Type_e0,        0xe0
.equ MarioActor_PositionX,  0x10
.equ MarioActor_PositionY,  0x14
.equ MarioActor_PositionZ,  0x18
.equ PositionX,             0x0
.equ PositionY,             0x4
.equ PositionZ,             0x8
.equ MarioActor_20,         0x20
.equ MarioActor_30,         0x30
.equ MarioActor_34,         0x34
.equ MarioActor_38,         0x38
.equ MarioActor_58,         0x58
.equ MarioActor_68,         0x68
.equ MarioActor_6c,         0x6c
.equ MarioActor_70,         0x70
.equ MarioActor_74,         0x74
.equ MarioActor_78,         0x78
.equ MarioActor_Status,     0x7c # MarioStatus
.equ MarioActor_LastStatus, 0x80
.equ MarioActor_StatusTime, 0x84
.equ MarioActor_86,         0x86
.equ MarioActor_88,         0x88
.equ MarioActor_8c,         0x8c
.equ MarioActor_90,         0x90
.equ MarioActor_AngleX,     0x94
.equ MarioActor_AngleY,     0x96
.equ MarioActor_AngleZ,     0x98
.equ MarioActor_9a,         0x9a
.equ MarioActor_9c,         0x9c
.equ MarioActor_9e,         0x9e
.equ MarioActor_a0,         0xa0
.equ MarioActor_SpeedX,     0xa4
.equ MarioActor_SpeedY,     0xa8
.equ MarioActor_SpeedZ,     0xac
.equ MarioActor_Velocity,   0xb0
.equ MarioActor_b4,         0xb4
.equ MarioActor_b8,         0xb8
.equ MarioActor_bc,         0xbc
.equ MarioActor_c0,         0xc0
.equ MarioActor_c4,         0xc4
.equ MarioActor_c8,         0xc8
.equ MarioActor_cc,         0xcc
.equ MarioActor_d0,         0xd0
.equ MarioActor_d4,         0xd4
.equ MarioActor_d5,         0xd5
.equ MarioActor_WlPlane,    0xd8
.equ MarioActor_RfPlane,    0xdc
.equ MarioActor_GroundPlane, 0xe0
.equ MarioActor_e4,         0xe4
.equ MarioActor_e8,         0xe8
.equ MarioActor_ec,         0xec
.equ MarioActor_WaterLevel, 0xf0
.equ MarioActor_f4,         0xf4
.equ MarioActor_f6,         0xf6
.equ MarioActor_LightID,    0xf8
.equ MarioActor_fa,         0xfa
.equ MarioActor_fc,         0xfc
.equ MarioActor_fe,         0xfe
.equ MarioActor_100,        0x100
.equ MarioActor_104,        0x104
.equ MarioActor_108,        0x108
.equ MarioActor_10c,        0x10c
.equ MarioActor_110,        0x110
.equ MarioActor_114,        0x114
.equ MarioActor_116,        0x116
.equ MarioActor_Flags,      0x118
.equ MarioActor_11c_Flags,  0x11c
.equ MarioActor_HP,         0x120
.equ MarioActor_122,        0x122
.equ MarioActor_124,        0x124
.equ MarioActor_126,        0x126
.equ MarioActor_128,        0x128
.equ MarioActor_12c,        0x12c
.equ MarioActor_130,        0x130
.equ MarioActor_134,        0x134
.equ MarioActor_144,        0x144
.equ MarioActor_148,        0x148
.equ MarioActor_14c,        0x14c
.equ MarioActor_14e,        0x14e
.equ MarioActor_154,        0x154
.equ MarioActor_158,        0x158
.equ MarioActor_15c,        0x15c
.equ MarioActor_160,        0x160
.equ MarioActor_164,        0x164
.equ MarioActor_168,        0x168
.equ MarioActor_16c,        0x16c
.equ MarioActor_170,        0x170
.equ MarioActor_174,        0x174
.equ MarioActor_178,        0x178
.equ MarioActor_17c,        0x17c
.equ MarioActor_180,        0x180
.equ MarioActor_184,        0x184
.equ MarioActor_188,        0x188
.equ MarioActor_18c,        0x18c
.equ MarioActor_190,        0x190
.equ MarioActor_194,        0x194
.equ MarioActor_198,        0x198
.equ MarioActor_19c,        0x19c
.equ MarioActor_1a0,        0x1a0
.equ MarioActor_1a4,        0x1a4
.equ MarioActor_1a8,        0x1a8
.equ MarioActor_1ac,        0x1ac
.equ MarioActor_1b0,        0x1b0
.equ MarioActor_1b4,        0x1b4
.equ MarioActor_1b8,        0x1b8
.equ MarioActor_1bc,        0x1bc
.equ MarioActor_1c0,        0x1c0
.equ MarioActor_1cc,        0x1cc
.equ MarioActor_1dc,        0x1dc
.equ MarioActor_1ec,        0x1ec
.equ MarioActor_1f0,        0x1f0
.equ MarioActor_220,        0x220
.equ MarioActor_250,        0x250
.equ MarioActor_280,        0x280
.equ MarioActor_284,        0x284
.equ MarioActor_288,        0x288
.equ MarioActor_28c,        0x28c
.equ MarioActor_290,        0x290
.equ MarioActor_294,        0x294
.equ MarioActor_298,        0x298
.equ MarioActor_29c,        0x29c
.equ MarioActor_2a0,        0x2a0
.equ MarioActor_2a4,        0x2a4
.equ MarioActor_2a8,        0x2a8
.equ MarioActor_2ac,        0x2ac
.equ MarioActor_2b0,        0x2b0
.equ MarioActor_2b4,        0x2b4
.equ MarioActor_2b8,        0x2b8
.equ MarioActor_2ba,        0x2ba
.equ MarioActor_2bc,        0x2bc
.equ MarioActor_2c0,        0x2c0
.equ MarioActor_2c4,        0x2c4
.equ MarioActor_2f4,        0x2f4
.equ MarioActor_2f8,        0x2f8
.equ MarioActor_2fc,        0x2fc
.equ MarioActor_300,        0x300
.equ MarioActor_304,        0x304
.equ MarioActor_308,        0x308
.equ MarioActor_30c,        0x30c
.equ MarioActor_310,        0x310
.equ MarioActor_314,        0x314
.equ MarioActor_318,        0x318
.equ MarioActor_348,        0x348
.equ MarioActor_34c,        0x34c
.equ MarioActor_34e,        0x34e
.equ MarioActor_350,        0x350
.equ MarioActor_354,        0x354
.equ MarioActor_358,        0x358
.equ MarioActor_35c,        0x35c
.equ MarioActor_360,        0x360
.equ MarioActor_362,        0x362
.equ MarioActor_364,        0x364
.equ MarioActor_366,        0x366
.equ MarioActor_368,        0x368
.equ MarioActor_36c,        0x36c
.equ MarioActor_370,        0x370
.equ MarioActor_374,        0x374
.equ MarioActor_378,        0x378
.equ MarioActor_37e,        0x37e
.equ MarioActor_380,        0x380
.equ MarioActor_384,        0x384
.equ MarioActor_388,        0x388
.equ MarioActor_390,        0x390
.equ MarioActor_394,        0x394
.equ MarioActor_398,        0x398
.equ MarioActor_39c,        0x39c
.equ MarioActor_3a0,        0x3a0
.equ MarioActor_3a4,        0x3a4
.equ MarioActor_3a8,        0x3a8
.equ MarioActor_3ac,        0x3ac
.equ MarioActor_3b0,        0x3b0
.equ MarioActor_3b4,        0x3b4
.equ MarioActor_3b8,        0x3b8
.equ MarioActor_3bc,        0x3bc
.equ MarioActor_3c0,        0x3c0
.equ MarioActor_3c4,        0x3c4
.equ MarioActor_3c5,        0x3c5
.equ MarioActor_3c6,        0x3c6
.equ MarioActor_3c7,        0x3c7
.equ MarioActor_3c8,        0x3c8
.equ MarioActor_3c9,        0x3c9
.equ MarioActor_3ca,        0x3ca
.equ MarioActor_3cb,        0x3cb
.equ MarioActor_3cc,        0x3cc
.equ MarioActor_3cd,        0x3cd
.equ MarioActor_3ce,        0x3ce
.equ MarioActor_3cf,        0x3cf
.equ MarioActor_3d0,        0x3d0
.equ MarioActor_3d4,        0x3d4
.equ MarioActor_3d6,        0x3d6
.equ MarioActor_3d8,        0x3d8
.equ MarioActor_3dc,        0x3dc
.equ MarioActor_3e0,        0x3e0
.equ MarioActor_3e0_4,          0x4
.equ MarioActor_3e0_4_WearingCap,   0x1
.equ MarioActor_3e0_4_WearingHelm,  0x2
.equ MarioActor_3e0_4_Glass,        0x4
.equ MarioActor_WaterGun,   0x3e4
.equ MarioActor_3e8,        0x3e8
.equ MarioActor_3ec,        0x3ec
.equ MarioActor_Yoshi,      0x3f0
.equ MarioActor_3f4,        0x3f4
.equ MarioActor_3f8,        0x3f8
.equ MarioActor_3fc,        0x3fc
.equ MarioActor_400,        0x400
.equ MarioActor_404,        0x404
.equ MarioActor_408,        0x408
.equ MarioActor_40c,        0x40c
.equ MarioActor_410,        0x410
.equ MarioActor_412,        0x412
.equ MarioActor_414,        0x414
.equ MarioActor_418,        0x418
.equ MarioActor_41c,        0x41c
.equ MarioActor_420,        0x420
.equ MarioActor_424,        0x424
.equ MarioActor_428,        0x428
.equ MarioActor_42c,        0x42c
.equ MarioActor_430,        0x430
.equ MarioActor_434,        0x434
.equ MarioActor_438,        0x438
.equ MarioActor_43c,        0x43c
.equ MarioActor_440,        0x440
.equ MarioActor_444,        0x444
.equ MarioActor_448,        0x448
.equ MarioActor_44c,        0x44c
.equ MarioActor_450,        0x450
.equ MarioActor_454,        0x454
.equ MarioActor_458,        0x458
.equ MarioActor_470,        0x470
.equ MarioActor_474,        0x474
.equ MarioActor_4dc,        0x4dc
.equ MarioActor_4e0,        0x4e0
.equ MarioActor_4e4,        0x4e4
.equ MarioActor_4e8,        0x4e8
.equ MarioActor_4ec,        0x4ec
.equ MarioActor_4ed,        0x4ed
.equ MarioActor_4ee,        0x4ee
.equ MarioActor_4f0,        0x4f0
.equ MarioActor_4f4,        0x4f4
.equ MarioActor_4f8,        0x4f8
.equ MarioActor_MarioGamePad, 0x4fc
.equ MarioActor_SoundValues,        0x500
.equ MarioActor_530,        0x530
.equ MarioActor_536,        0x536
.equ MarioActor_538,        0x538
.equ MarioActor_53a,        0x53a
.equ MarioActor_53b,        0x53b
.equ MarioActor_53c,        0x53c
.equ MarioActor_534,        0x534
.equ MarioActor_540,        0x540
.equ MarioActor_544,        0x544
.equ MarioActor_548,        0x548
.equ MarioActor_54c,        0x54c
.equ MarioActor_54d,        0x54d
.equ MarioActor_54e,        0x54e
.equ MarioActor_550,        0x550
.equ MarioActor_552,        0x552
.equ MarioActor_554,        0x554
.equ MarioActor_558,        0x558
.equ MarioActor_55c,        0x55c
.equ MarioActor_560,        0x560
.equ MarioActor_564,        0x564
.equ MarioActor_568,        0x568
.equ MarioActor_56c,        0x56c
.equ MarioActor_570,        0x570
.equ MarioActor_574,        0x574
.equ MarioActor_58c,        0x58c
.equ MarioActor_5b4,        0x5b4
.equ MarioActor_5c8,        0x5c8
.equ MarioActor_5dc,        0x5dc
.equ MarioActor_5f0,        0x5f0
.equ MarioActor_690,        0x690
.equ MarioActor_7d0,        0x7d0
.equ MarioActor_7e4,        0x7e4
.equ MarioActor_7f8,        0x7f8
.equ MarioActor_80c,        0x80c
.equ MarioActor_ThrowPower, 0x820
.equ MarioActor_870,        0x870
.equ MarioActor_8ac,        0x8ac
.equ MarioActor_8e8,        0x8e8
.equ MarioActor_988,        0x988
.equ MarioActor_99c,        0x99c
.equ MarioActor_9a0,        0x9a0
.equ MarioActor_9a4,        0x9a4
.equ MarioActor_9a8,        0x9a8
.equ MarioActor_9b8,        0x9b8
.equ MarioActor_9bc,        0x9bc
.equ MarioActor_9cc,        0x9cc
.equ MarioActor_9d0,        0x9d0
.equ MarioActor_9e0,        0x9e0
.equ MarioActor_9e4,        0x9e4
.equ MarioActor_9f4,        0x9f4
.equ MarioActor_9f8,        0x9f8
.equ MarioActor_a08,        0xa08
.equ MarioActor_a0c,        0xa0c
.equ MarioActor_a1c,        0xa1c
.equ MarioActor_a20,        0xa20
.equ MarioActor_a24,        0xa24
.equ MarioActor_a28,        0xa28
.equ MarioActor_a38,        0xa38
.equ MarioActor_a3c,        0xa3c
.equ MarioActor_a4c,        0xa4c
.equ MarioActor_a50,        0xa50
.equ MarioActor_a60,        0xa60
.equ MarioActor_a64,        0xa64
.equ MarioActor_a74,        0xa74
.equ MarioActor_a78,        0xa78
.equ MarioActor_a88,        0xa88
.equ MarioActor_a8c,        0xa8c
.equ MarioActor_a9c,        0xa9c
.equ MarioActor_aa0,        0xaa0
.equ MarioActor_aa4,        0xaa4
.equ MarioActor_aa8,        0xaa8
.equ MarioActor_ab8,        0xab8
.equ MarioActor_abc,        0xabc
.equ MarioActor_acc,        0xacc
.equ MarioActor_ad0,        0xad0
.equ MarioActor_ad4,        0xad4
.equ MarioActor_ad8,        0xad8
.equ MarioActor_ae8,        0xae8
.equ MarioActor_aec,        0xaec
.equ MarioActor_afc,        0xafc
.equ MarioActor_b00,        0xb00
.equ MarioActor_Gravity,    0xb18
.equ MarioActor_b2c,        0xb2c
.equ MarioActor_b40,        0xb40
.equ MarioActor_b90,        0xb90
.equ MarioActor_bb8,        0xbb8
.equ MarioActor_be0,        0xbe0
.equ MarioActor_bf4,        0xbf4
.equ MarioActor_c08,        0xc08
.equ MarioActor_c1c,        0xc1c
.equ MarioActor_c58,        0xc58
.equ MarioActor_c6c,        0xc6c
.equ MarioActor_ce4,        0xce4
.equ MarioActor_cf8,        0xcf8
.equ MarioActor_d0c,        0xd0c
.equ MarioActor_d34,        0xd34
.equ MarioActor_d48,        0xd48
.equ MarioActor_d5c,        0xd5c
.equ MarioActor_d84,        0xd84
.equ MarioActor_d98,        0xd98
.equ MarioActor_dac,        0xdac
.equ MarioActor_e60,        0xe60
.equ MarioActor_e74,        0xe74
.equ MarioActor_e88,        0xe88
.equ MarioActor_ea0,        0xea0
.equ MarioActor_fbc,        0xfbc
.equ MarioActor_1020,       0x1020
.equ MarioActor_1034,       0x1034
.equ MarioActor_104c,       0x104c
.equ MarioActor_117c,       0x117c
.equ MarioActor_1190,       0x1190
.equ MarioActor_1208,       0x1208
.equ MarioActor_1244,       0x1244
.equ MarioActor_126c,       0x126c
.equ MarioActor_1278,       0x1278
.equ MarioActor_1280,       0x1280
.equ MarioActor_1294,       0x1294
.equ MarioActor_1298,       0x1298
.equ MarioActor_129c,       0x129c
.equ MarioActor_12a0,       0x12a0
.equ MarioActor_12b0,       0x12b0
.equ MarioActor_12b4,       0x12b4
.equ MarioActor_12c4,       0x12c4
.equ MarioActor_12c8,       0x12c8
.equ MarioActor_12d8,       0x12d8
.equ MarioActor_12dc,       0x12dc
.equ MarioActor_12ec,       0x12ec
.equ MarioActor_12f0,       0x12f0
.equ MarioActor_1300,       0x1300
.equ MarioActor_1304,       0x1304
.equ MarioActor_1314,       0x1314
.equ MarioActor_1318,       0x1318
.equ MarioActor_131c,       0x131c
.equ MarioActor_1320,       0x1320
.equ MarioActor_1330,       0x1330
.equ MarioActor_1334,       0x1334
.equ MarioActor_13ec,       0x13ec
.equ MarioActor_147c,       0x147c
.equ MarioActor_1480,       0x1480
.equ MarioActor_1484,       0x1484
.equ MarioActor_1494,       0x1494
.equ MarioActor_1498,       0x1498
.equ MarioActor_14a8,       0x14a8
.equ MarioActor_14ac,       0x14ac
.equ MarioActor_14bc,       0x14bc
.equ MarioActor_14c0,       0x14c0
.equ MarioActor_14d0,       0x14d0
.equ MarioActor_14d4,       0x14d4
.equ MarioActor_14d8,       0x14d8
.equ MarioActor_14dc,       0x14dc
.equ MarioActor_14ec,       0x14ec
.equ MarioActor_14f0,       0x14f0
.equ MarioActor_1500,       0x1500
.equ MarioActor_16c4,       0x16c4
.equ MarioActor_16d8,       0x16d8
.equ MarioActor_16ec,       0x16ec
.equ MarioActor_1700,       0x1700
.equ MarioActor_1778,       0x1778
.equ MarioActor_17dc,       0x17dc
.equ MarioActor_17f0,       0x17f0
.equ MarioActor_1898,       0x1898
.equ MarioActor_18ac,       0x18ac
.equ MarioActor_18c0,       0x18c0
.equ MarioActor_18d4,       0x18d4
.equ MarioActor_194c,       0x194c
.equ MarioActor_19b0,       0x19b0
.equ MarioActor_19c4,       0x19c4
.equ MarioActor_1c80,       0x1c80
.equ MarioActor_21b0,       0x21b0
.equ MarioActor_221c,       0x221c
.equ MarioActor_2244,       0x2244
.equ MarioActor_2258,       0x2258
.equ MarioActor_233c,       0x233c
.equ MarioActor_2358,       0x2358
.equ MarioActor_236c,       0x236c
.equ MarioActor_2380,       0x2380
.equ MarioActor_2394,       0x2394
.equ MarioActor_23d0,       0x23d0
.equ MarioActor_23e4,       0x23e4
.equ MarioActor_2428,       0x2428
.equ MarioActor_243c,       0x243c
.equ MarioActor_2464,       0x2464
.equ MarioActor_2478,       0x2478
.equ MarioActor_248c,       0x248c
.equ MarioActor_24a0,       0x24a0
.equ MarioActor_24b4,       0x24b4
.equ MarioActor_24dc,       0x24dc
.equ MarioActor_2518,       0x2518
.equ MarioActor_252c,       0x252c
.equ MarioActor_2540,       0x2540
.equ MarioActor_2554,       0x2554
.equ MarioActor_2568,       0x2568
.equ MarioActor_2590,       0x2590
.equ MarioActor_25a4,       0x25a4
.equ MarioActor_25b8,       0x25b8
.equ MarioActor_26d8,       0x26d8
.equ MarioActor_278c,       0x278c
.equ MarioActor_27bc,       0x27bc
.equ MarioActor_27f8,       0x27f8
.equ MarioActor_283c,       0x283c
.equ MarioActor_2a18,       0x2a18
.equ MarioActor_2be0,       0x2be0
.equ MarioActor_2cc4,       0x2cc4
.equ MarioActor_2da8,       0x2da8
.equ MarioActor_2e8c,       0x2e8c
.equ MarioActor_2f70,       0x2f70
.equ MarioActor_4264,       0x4264
.equ MarioActor_4278,       0x4278
.equ MarioActor_428c,       0x428c


/**********************
MarioGamePad
**********************/
.equ MarioGamePad_a8,       0xa8
.equ MarioGamePad_ac,       0xac
.equ MarioGamePad_b0,       0xb0
.equ MarioGamePad_b4,       0xb4
.equ MarioGamePad_d0,       0xd0
.equ MarioGamePad_d4,       0xd4

/**********************
MarioFlag
**********************/
.equ MARIOFLAG_1,               1<<0 # MARIOFLAG_ALIVE
.equ MARIOFLAG_2,               1<<1
.equ MARIOFLAG_4,               1<<2 # MARIOFLAG_INVISIBLE
.equ MARIOFLAG_8,               1<<3 # isInvincible
.equ MARIOFLAG_10,              1<<4
.equ MARIOFLAG_20,              1<<5
.equ MARIOFLAG_40,              1<<6
.equ MARIOFLAG_80,              1<<7 # MARIOFLAG_SLIP
.equ MARIOFLAG_100,             1<<8
.equ MARIOFLAG_200,             1<<9
.equ MARIOFLAG_400,             1<<10 # MARIOFLAG_GAMEOVER
# MARIOFLAG_ALLDEAD = 0xf00
.equ MARIOFLAG_1000,            1<<12 # MARIOFLAG_HASHELMET_FOLLOWCAMERA
.equ MARIOFLAG_2000,            1<<13 # MARIOFLAG_HASHELMET
.equ MARIOFLAG_4000,            1<<14
.equ MARIOFLAG_8000,            1<<15 # MARIOFLAG_HASFLUDD
.equ MARIOFLAG_10000,           1<<16 # isUnderWater MARIOFLAG_SPLASH
.equ MARIOFLAG_20000,           1<<17 # isUnderWater MARIOFLAG_PUDDLE
.equ MARIOFLAG_40000,           1<<18
.equ MARIOFLAG_80000,           1<<19
.equ MARIOFLAG_100000,          1<<20 # MARIOFLAG_SHIRT
.equ MARIOFLAG_200000,          1<<21 # MARIOFLAG_GONE

/**********************
MarioStatus
changePlayerStatus__6TMarioFUlUlb: r4
**********************/
# Bit 0-3: StateNr
# Bit 6-8: MainState
.equ MARIOSTATUS_WAITSTATE,     0<<6 # 0x0
.equ MARIOSTATUS_MOVESTATE,     1<<6 # 0x40
.equ MARIOSTATUS_JUMPSTATE,     2<<6 # 0x80
.equ MARIOSTATUS_SWIMSTATE,     3<<6 # 0xc0
.equ MARIOSTATUS_DEMOSTATE,     4<<6 # 0x100
.equ MARIOSTATUS_SPECSTATE,     5<<6 # 0x140
.equ MARIOSTATUS_ACTNSTATE,     6<<6 # 0x180

.equ MARIOSTATUS_200,           1<<9 # 0x200
.equ MARIOSTATUS_TYPEJUMPING,   1<<11 # 0x800
.equ MARIOSTATUS_CUTSCENE,      1<<12 # 0x1000
.equ MARIOSTATUS_TYPESWIMMING,  1<<13 # 0x2000
.equ MARIOSTATUS_10000,         1<<16 # 0x10000
.equ MARIOSTATUS_20000,         1<<17 # 0x20000
.equ MARIOSTATUS_200000,        1<<21
.equ MARIOSTATUS_20000000,      1<<29

.equ MARIOSTATUS_50,            MARIOSTATUS_MOVESTATE | 0x10 # 0x50
.equ MARIOSTATUS_ROOFING0,      MARIOSTATUS_SPECSTATE | 0x7 # 0x147
.equ MARIOSTATUS_ROOFING1,      MARIOSTATUS_SPECSTATE | 0xa # 0x14a
.equ MARIOSTATUS_14b,           MARIOSTATUS_SPECSTATE | 0xb # 0x14b
.equ MARIOSTATUS_14f,           MARIOSTATUS_SPECSTATE | 0xf # 0x14f
.equ MARIOSTATUS_FENCING0,      MARIOSTATUS_SPECSTATE | 0x28 # 0x168
.equ MARIOSTATUS_FENCING1,      MARIOSTATUS_SPECSTATE | 0x2c # 0x16c
.equ MARIOSTATUS_201,           MARIOSTATUS_WAITSTATE | 0x200 | 0x1 # 0x201
.equ MARIOSTATUS_202,           MARIOSTATUS_WAITSTATE | 0x200 | 0x2 # 0x202
.equ MARIOSTATUS_203,           MARIOSTATUS_WAITSTATE | 0x200 | 0x3 # 0x203
.equ MARIOSTATUS_204,           MARIOSTATUS_WAITSTATE | 0x200 | 0x4 # 0x204
.equ MARIOSTATUS_227,           MARIOSTATUS_WAITSTATE | 0x200 | 0x27 # 0x227
.equ MARIOSTATUS_230,           MARIOSTATUS_WAITSTATE | 0x200 | 0x30 # 0x230
.equ MARIOSTATUS_23e,           MARIOSTATUS_WAITSTATE | 0x200 | 0x3e # 0x23e
.equ MARIOSTATUS_ELECDAMAGE,    MARIOSTATUS_DEMOSTATE | 0x200 | 0x38 # 0x338
.equ MARIOSTATUS_345,           0x345
.equ MARIOSTATUS_34b,           0x34b
.equ MARIOSTATUS_370,           0x370
.equ MARIOSTATUS_383,           0x383
.equ MARIOSTATUS_384,           0x384
.equ MARIOSTATUS_387,           0x387
.equ MARIOSTATUS_440,           0x440
.equ MARIOSTATUS_446,           0x446
.equ MARIOSTATUS_447,           0x447
.equ MARIOSTATUS_452,           0x452
.equ MARIOSTATUS_453,           0x453
.equ MARIOSTATUS_DIVESLIDE,     MARIOSTATUS_MOVESTATE | 0x400 | 0x16 # 0x456
.equ MARIOSTATUS_467,           0x467
.equ MARIOSTATUS_54e,           0x54e
.equ MARIOSTATUS_554,           0x554
.equ MARIOSTATUS_569,           0x569
.equ MARIOSTATUS_588,           0x588
.equ MARIOSTATUS_880,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x0 # 0x880
.equ MARIOSTATUS_881,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x1 # 0x881
.equ MARIOSTATUS_882,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x2 # 0x882
.equ MARIOSTATUS_883,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x3 # 0x883
.equ MARIOSTATUS_884,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x4 # 0x884
.equ MARIOSTATUS_885,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x5 # 0x885
.equ MARIOSTATUS_887,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x7 # 0x887
.equ MARIOSTATUS_888,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x8 # 0x888
.equ MARIOSTATUS_889,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x9 # 0x889
.equ MARIOSTATUS_DIVE,          MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0xa # 0x88a
.equ MARIOSTATUS_88b,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0xb # 0x88b
.equ MARIOSTATUS_88c,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0xc # 0x88c
.equ MARIOSTATUS_88d,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0xd # 0x88d
.equ MARIOSTATUS_88e,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0xe # 0x88e
.equ MARIOSTATUS_890,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x10 # 0x890
.equ MARIOSTATUS_891,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x11 # 0x891
.equ MARIOSTATUS_892,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x12 # 0x892
.equ MARIOSTATUS_894,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x14 # 0x894
.equ MARIOSTATUS_897,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x17 # 0x897
.equ MARIOSTATUS_89a,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x1a # 0x89a
.equ MARIOSTATUS_89c,           MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x1c # 0x89c
.equ MARIOSTATUS_8a7,           0x8a7
.equ MARIOSTATUS_8a9,           0x8a9
.equ MARIOSTATUS_8b4,           0x8b4
.equ MARIOSTATUS_8b7,           0x8b7
.equ MARIOSTATUS_THROWNDOWN,    MARIOSTATUS_JUMPSTATE | MARIOSTATUS_TYPEJUMPING | 0x38 # 0x8b8
.equ MARIOSTATUS_1302,          MARIOSTATUS_DEMOSTATE | MARIOSTATUS_CUTSCENE | 0x200 | 0x2 # 0x1302
.equ MARIOSTATUS_1308,          MARIOSTATUS_DEMOSTATE | MARIOSTATUS_CUTSCENE | 0x200 | 0x8 # 0x1308
.equ MARIOSTATUS_1310,          MARIOSTATUS_DEMOSTATE | MARIOSTATUS_CUTSCENE | 0x200 | 0x10 # 0x1310
.equ MARIOSTATUS_OPENINGDOOR0,  MARIOSTATUS_DEMOSTATE | MARIOSTATUS_CUTSCENE | 0x200 | 0x20 # 0x1320
.equ MARIOSTATUS_OPENINGDOOR1,  MARIOSTATUS_DEMOSTATE | MARIOSTATUS_CUTSCENE | 0x200 | 0x21 # 0x1321
.equ MARIOSTATUS_1337,          0x1337
.equ MARIOSTATUS_133e,          0x133e
.equ MARIOSTATUS_133f,          0x133f

/**********************
MarioMsgNr
SMS_SendMessageToMario__FP9THitActorUl: r4
**********************/
.equ MARIOMSG_3,            0x3
.equ MARIOMSG_4,            0x4
.equ MARIOMSG_ROCKET,       0x5 # ?
.equ MARIOMSG_THROW,        0x7
.equ MARIOMSG_8,            0x8
.equ MARIOMSG_HURTELECTRIC, 0x9
.equ MARIOMSG_HURTFIRE,     0xa
.equ MARIOMSG_HURT,         0xe

/**********************
MapObjManager (MapObjBaseManager)
**********************/
.equ MapObjManager_0,       0x0
.equ MapObjManager_14,      0x14
.equ MapObjManager_18,      0x18

/**********************
ItemManager
**********************/
.equ ItemManager_Size,      0x7c
.equ ItemManager_0,         0x0
# base class is MapObjBaseManager
.equ ItemManager_40,        0x40
.equ ItemManager_44,        0x44
.equ ItemManager_48,        0x48
.equ ItemManager_4c,        0x4c
.equ ItemManager_50,        0x50
.equ ItemManager_54,        0x54
.equ ItemManager_58,        0x58
.equ ItemManager_5c,        0x5c
.equ ItemManager_60,        0x60
.equ ItemManager_64,        0x64
.equ ItemManager_68,        0x68
.equ ItemManager_6c,        0x6c
.equ ItemManager_70,        0x70
.equ ItemManager_74,        0x74
.equ ItemManager_78,        0x78

/**********************
ObjectID
**********************/
.equ OBJ_WATER,             0x20000002
.equ OBJ_ONEUP,             0x20000006
.equ OBJ_COIN,              0x2000000E
.equ OBJ_BLUECOIN,          0x20000010
.equ OBJ_ROCKETNOZZLE,      0x20000022
.equ OBJ_HOVERNOZZLE,       0x20000026
.equ OBJ_TURBONOZZLE,       0x2000002A

/**********************
SoundID
startVoice__6TMarioFUl: r4
startVoiceIfNoVoice__6TMarioFUl: r4
startMarioVoice__6MSoundFUlsUc: r4
**********************/
.equ SOUND_7094,            0x7094
.equ SOUND_7807,            0x7807
.equ SOUND_7830,            0x7830
.equ SOUND_7833,            0x7833
.equ SOUND_783b,            0x783b
.equ SOUND_7844,            0x7844
.equ SOUND_7849,            0x7849
.equ SOUND_784f,            0x784f
.equ SOUND_7852,            0x7852
.equ SOUND_785d,            0x785d
.equ SOUND_7861,            0x7861
.equ SOUND_7865,            0x7865
.equ SOUND_786b,            0x786b
.equ SOUND_7883,            0x7883
.equ SOUND_7884,            0x7884
.equ SOUND_788f,            0x788f
.equ SOUND_7890,            0x7890
.equ SOUND_789a,            0x789a
.equ SOUND_789e,            0x789e
.equ SOUND_78a3,            0x78a3
.equ SOUND_78ab,            0x78ab
.equ SOUND_78b1,            0x78b1
.equ SOUND_78b6,            0x78b6
.equ SOUND_78b9,            0x78b9
.equ SOUND_78bf,            0x78bf
.equ SOUND_78c1,            0x78c1
.equ SOUND_78c4,            0x78c4
.equ SOUND_78cf,            0x78cf
.equ SOUND_78d3,            0x78d3
.equ SOUND_78e0,            0x78e0
.equ SOUND_78e5,            0x78e5
.equ SOUND_78f2,            0x78f2
.equ SOUND_78f3,            0x78f3
.equ SOUND_78fb,            0x78fb
.equ SOUND_78fc,            0x78fc
.equ SOUND_7903,            0x7903
.equ SOUND_7907,            0x7907
.equ SOUND_7913,            0x7913
.equ SOUND_7919,            0x7919
.equ SOUND_792a,            0x792a
.equ SOUND_fffe,            -2

/**********************
PolarSubCamera
**********************/
.equ PolarSubCamera_0,      0x0
.equ PolarSubCamera_50,     0x50
.equ PolarSubCamera_64,     0x64
.equ PolarSubCamera_68,     0x68
.equ PolarSubCamera_78,     0x78
.equ PolarSubCamera_7c,     0x7c
.equ PolarSubCamera_8c,     0x8c
.equ PolarSubCamera_90,     0x90
.equ PolarSubCamera_94,     0x94
.equ PolarSubCamera_a6,     0xa6
.equ PolarSubCamera_a8,     0xa8
.equ PolarSubCamera_b4,     0xb4
.equ PolarSubCamera_bc,     0xbc
.equ PolarSubCamera_120,    0x120
.equ PolarSubCamera_120_b0,     0xb0
.equ PolarSubCamera_120_c0,     0xc0
.equ PolarSubCamera_120_c4,     0xc4
.equ PolarSubCamera_250,    0x250
.equ PolarSubCamera_258,    0x258
.equ PolarSubCamera_274,    0x274
.equ PolarSubCamera_276,    0x276
.equ PolarSubCamera_288,    0x288
.equ PolarSubCamera_2a8,    0x2a8
.equ PolarSubCamera_2ca,    0x2ca
.equ PolarSubCamera_2d4,    0x2d4
