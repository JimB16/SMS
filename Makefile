

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


#SRCS = init.s text.s Data_0x8040c1c0.s Data_0x8040eba0.s bss.s
SRCS = init.s text.s sdata.s sdata2.s bss.s sbss.s
OBJS_ = $(SRCS:.S=.o)
OBJS = $(addprefix build/, $(OBJS_:.s=.o))
DEPS_ = $(SRCS:.S=.d)
DEPS = $(addprefix build/, $(DEPS_:.s=.d))


all:

clean:
	rm -f build/*

help:
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-as --help > ashelp.txt
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-ld --help > ldhelp.txt
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-gcc -v --help > gcchelp.txt

-include $(DEPS)

build/%.d: source/%.s
	$(MKDIR_P) build/
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-as --MD $@ -m750cl -mbig-endian -mregnames $<
	#$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-gcc -mbig-endian -mregnames -Wa,-m750cl,--MD"$(subst .s,.d,build/$(notdir $<))" -finput-charset=shift-jis -MF $@ -M -MP $<

build/%.o: source/%.s build/%.d
	$(MKDIR_P) build/
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-gcc -mbig-endian -mregnames -Wa,-m750cl -finput-charset=shift-jis -c $< -o $@
#	$(DEVKITARM)/bin/arm-none-eabi-gcc -x assembler-with-cpp -MMD -MP -MF $(subst .s,.d,build/$(notdir $<)) -march=armv5te -mthumb-interwork $< -c -o $@
	#$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-as --MD $(subst .s,.d,build/$(notdir $<)) -m750cl -mbig-endian -mregnames $< -o $@

conv:
	iconv -f SHIFT-JIS -t UTF-8 source/rodata.s > source/rodata_.s
	iconv -f UTF-8 -t SHIFT-JIS source/rodata_.s > source/rodata.s

asm: $(OBJS) $(DEPS)
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-ld -T gcn.ld -Map "./build/bootfile.map" --nmagic --warn-section-align $(OBJS) -o "./build/bootfile.elf"
	$(DEVKITPRO)/devkitPPC/bin/powerpc-eabi-objcopy -v -O binary "./build/bootfile.elf" "./build/bootfile.bin"
	hexdump -C "./build/bootfile.bin" > "./build/bootfile.hex.txt"
	diff -u "./baserom/bootfile.hex.txt" "./build/bootfile.hex.txt" | less > "./build/diff_bootfile.txt"

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
	$(MKDIR_P) baserom/
	hexdump -C "./newiso/bootfile.dol" > "./baserom/bootfile.hex.txt"
	hexdump -C newiso/fst.bin > baserom/fst.txt

newSMS:
	$(create_rom) -dir "./newiso" -fst "./newiso/fst.bin" -fstmap "./newiso/SMS_U_FileList.txt" -o "./game.iso"
	md5sum ./game.iso
	hexdump -C newiso/fst.bin > build/fst.txt
	diff -u baserom/fst.txt build/fst.txt | less > build/diff_fst.txt
