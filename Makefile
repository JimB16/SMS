

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro)
endif

ifeq ($(strip $(DEVKITPPC)),)
$(error "Please set DEVKITPPC in your environment. export DEVKITPPC=<path to>devkitPPC")
endif


PYTHON := python
MKDIR_P = mkdir -p

.PHONY: asm all check init

ppcdisassem    := $(PYTHON) tools/ppcdisassem.py
unpack_iso     := $(PYTHON) tools/unpack_iso.py
create_rom     := $(PYTHON) tools/create_rom.py


SRCS = init.s text.s sdata.s sdata2.s bss.s sbss.s
OBJS = $(addprefix build/, $(SRCS:.s=.o))
DEPS = $(addprefix build/, $(SRCS:.s=.d))


all:

clean:
	rm -f build/*


build:
	mkdir -p $@

-include $(DEPS)

build/%.d: ;

build/%.o: source/%.s build/%.d | build
	$(DEVKITPPC)/bin/powerpc-eabi-gcc -mbig-endian -mregnames -Wa,-m750cl -finput-charset=shift-jis -c $< -o $@

asm: $(OBJS) $(DEPS)
	$(DEVKITPPC)/bin/powerpc-eabi-ld -T gcn.ld -Map "./build/bootfile.map" --nmagic --warn-section-align $(OBJS) -o "./build/bootfile.elf"
	$(DEVKITPPC)/bin/powerpc-eabi-objcopy -v -O binary "./build/bootfile.elf" "./build/bootfile.bin"
	hexdump -C "./build/bootfile.bin" > "./build/bootfile.hex.txt"
	diff -u "./baserom/bootfile.hex.txt" "./build/bootfile.hex.txt" | less > "./build/diff_bootfile.txt"

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
