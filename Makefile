

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro)
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif


PYTHON := python
MKDIR_P = mkdir -p

.PHONY: asm all check init

ppcdisassem    := $(PYTHON) tools/ppcdisassem.py
unpack_iso     := $(PYTHON) tools/unpack_iso.py
create_rom     := $(PYTHON) tools/create_rom.py


all:

asm:
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-as --help
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-as -m750cl -mbig-endian -mregnames "./source/Text_0x80003100.s" -o "./build/Text_0x80003100.o"
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-as -m750cl -mbig-endian -mregnames "./source/Text_0x80005600.s" -o "./build/Text_0x80005600.o"
	#$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-ld -Ttext 0 -Map "./Text_0x80003100.map" "./Text_0x80003100.o" -o "./Text_0x80003100.elf"
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-ld -T "./source/gcn.ld" -Map "./build/bootfile.map" "./build/Text_0x80003100.o" "./build/Text_0x80005600.o" -o "./build/bootfile.elf"
	#$(DEVKITARM)/bin/arm-none-eabi-ld -Ttext 0 $(subst .s,.o,$<) -o $(subst .s,.elf,$<)
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-objcopy -v -O binary "./build/bootfile.elf" "./build/bootfile_new.bin"
	hexdump -C "./baserom/bootfile.dol" > "./baserom/bootfile.hex.txt"
	hexdump -C "./build/bootfile_new.bin" > "./build/bootfile_new.hex.txt"
	diff -u "./baserom/bootfile.hex.txt" "./build/bootfile_new.hex.txt" | less > "./build/diff_bootfile.txt"

disassem:
	$(ppcdisassem) -ppc "./baserom/Text_0x80003100.bin" -base 0x80003100 -start 0x8000522c -o "./Text_0x80003100.s" -labels "./labels.sym"
	#$(armdisassem) "./.code.bin" 0x00100000 800 800 "./arm9_labels.sym" "./arm9_startpoints.sym" "./arm9_jumptables.sym" "./arm9_addjumps.sym" "./arm9_addjumps_arm.sym" "./arm9_function_area.sym" "./arm9_function_area_arm.sym"

disassem2:
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-objdump --help
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-objdump --disassemble-all --start-address=0x0 --stop-address=0x212c -b binary -m powerpc:750 -EB "./baserom/Text_0x80003100.bin"

disassem3:
	$(ppcdisassem) -ppc "./baserom/Text_0x80005600.bin" -base 0x80005600 -start 0x80005600 -o "./Text_0x80005600.s" -labels "./labels.sym" -starts "./starts.sym"

disassem4:
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-objdump --disassemble-all --start-address=0x33d1d0 --stop-address=0x33d1e0 -b binary -m powerpc:750 -EB "./baserom/Text_0x80005600.bin"

diagnose:
	$(unpack_iso) -d "./SMS_E.iso"


check:
	md5sum SMS_U.iso
	echo 0c6d2edae9fdf40dfc410ff1623e4119 *SMS_U.iso

init:
	$(unpack_iso) -d "./SMS_U.iso" -of "./newiso/" -filelist "SMS_U_FileList.txt" -export

newSMS:
	$(create_rom) -dir "./newiso" -fst "./newiso/fst.bin" -fstmap "./newiso/SMS_U_FileList.txt" -o "./game.iso"
	md5sum ./game.iso
	#hexdump -C baserom/fst.bin > baserom/fst.txt
	#hexdump -C newiso/fst.bin > build/fst.txt
	#diff -u baserom/fst.txt build/fst.txt | less > build/diff_fst.txt
