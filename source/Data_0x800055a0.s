
.section .ram800055a0, "ax"


off_800055A0:
.long __destroy_new_array

.byte	 0
.byte	 0
.byte	 0
.byte 0x7C

.long Unknown_80005540

.long __destroy_arr

.byte	 0
.byte	 0
.byte	 0
.byte 0x78 # x

.long Unknown_80005548

.long __construct_array

.byte	 0
.byte	 0
.byte	 1
.byte	 0

.long Unknown_80005550

.long __dt__26__partial_array_destructorFv

.byte	 0
.byte	 0
.byte	 0
.byte 0xB8 # ｸ

.long Unknown_80005568

.long __construct_new_array

.byte	 0
.byte	 0
.byte	 1
.byte	 8

.long Unknown_80005570

off_800055DC:
.long off_800055A0
.long off_800055DC

.long __destroy_new_array

.byte	 0
.byte	 0
.byte	 3
.byte 0xB4 # ｴ

.long 0, 0, 0, 0, 0

