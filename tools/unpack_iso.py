# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
from copy import copy, deepcopy
from ctypes import c_int8
import random
import operator
import png
import hashlib
from filehandler import FileHandler

import configuration


MediaUnit = 0x200


class RomSection():
    def __init__(self, name, address, fileID, size):
        self.name = name
        self.address = address
        self.fileID = fileID
        self.size = size

def getAddress(item):
    return item.address

RomMap = []

def addRomSection(name, address, size, fileID=-1):
    if size > 0:
        RomMap.append(RomSection(name, address, fileID, size))
    return None


spacing = "\t"

def asm_label(address):
    """
    Return the ASM label using the address.
    """
    # why using a random value when you can use the address?
    return '.asm_%x' % address

def data_label(address):
    return '.data_%x' % address


def conv_pic(outfilename, data=[], palette=[]):
    if not os.path.exists(os.path.dirname(outfilename)):
        os.makedirs(os.path.dirname(outfilename))
    
    f = open(outfilename, 'wb')
    w = png.Writer(len(data[0]), len(data), palette=palette, bitdepth=4)
    w.write(f, data)
    f.close()



class Disassembler(object):

    def __init__(self, config):
        self.config = config

    def initialize(self):
        rom_path = os.path.join(self.config.path, "baserom.nds")
        self.rom = bytearray(open(rom_path, "rb").read())

    def get_word_from_rom(self, addr):
        rom = self.rom
        return (rom[addr] << 0) | (rom[addr+1] << 8) | (rom[addr+2] << 16) | (rom[addr+3] << 24)

    def get_hword_from_rom(self, addr):
        rom = self.rom
        return (rom[addr] << 0) | (rom[addr+1] << 8)

    def get_byte_from_rom(self, addr):
        rom = self.rom
        return rom[addr]

    def get_string_from_rom(self, addr, length):
        rom = self.rom
        output = ""
        i = 0
        while i < length:
            output += chr(rom[addr+i])
            i += 1
        return output

    def get_0terminatedstring_from_rom(self, addr, length):
        rom = self.rom
        output = ""
        i = 0
        while i < length:
            if(rom[addr+i] != 0):
                output += chr(rom[addr+i])
            i += 1
        return output

    def get_md5_of_rom(self):
        m = hashlib.md5()
        m.update(str(bytearray(self.rom)))
        
        return m.hexdigest()

    def get_md5_of_partrom(self, addr, size):
        m = hashlib.md5()
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            current_byte = self.rom[offset]
            newFileBytes.append(current_byte) # new
            offset += 1
        
        m.update(str(bytearray(newFileBytes)))
        
        return m.hexdigest()

    def write_section_in_file(self, addr, size):
        if size == 0: return None
        rom = self.rom
        filename = 'data/data_' + "{:08x}".format(addr) + '.bin'
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            current_byte = rom[offset]
            newFileBytes.append(current_byte) # new
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None

    def write_section_in_file_wfilename(self, addr, size, filename):
        if size == 0: return None
        rom = self.rom
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            current_byte = rom[offset]
            newFileBytes.append(current_byte) # new
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None
        
    def write_overlays_in_files(self, ARM9Overlay, ARM9OverlaySize, OverlayDir, NameDir, writeFiles=1, addRomSections=0):
        if ARM9OverlaySize == 0: return None
        
        output = "\nOverlays:"
        
        offset = ARM9Overlay
        end_address = ARM9Overlay + ARM9OverlaySize
        ARM9OverlayOld = ARM9Overlay
        ARM9OverlaySizeOld = ARM9OverlaySize
        
        while offset < end_address:
            ARM9OverlayNew = ((ARM9OverlayOld + ARM9OverlaySizeOld) + 0x1ff) & 0xfffffe00
            ARM9OverlayNewSize = disasm.get_word_from_rom(offset+8)
            #disasm.write_section_in_file(ARM9OverlayNew, ARM9OverlayNewSize)
            if writeFiles == 1:
                disasm.write_section_in_file_wfilename(ARM9OverlayNew, ARM9OverlayNewSize, OverlayDir + "overlay_" + "{:04}".format(disasm.get_word_from_rom(offset+0)) + ".bin")
            if addRomSections == 1:
                addRomSection(NameDir + "overlay_" + "{:04}".format(disasm.get_word_from_rom(offset+0)) + ".bin", ARM9OverlayNew, ARM9OverlayNewSize)
            output += "\n" + "overlay_" + "{:04}".format(disasm.get_word_from_rom(offset+0)) + " " + hex(ARM9OverlayNew) + " - " + hex(ARM9OverlayNewSize)
            
            offset += 0x20
            ARM9OverlayOld = ARM9OverlayNew
            ARM9OverlaySizeOld = ARM9OverlayNewSize        
        
        output += "\n"
        
        return output
        
    def write_fats_in_files(self, FATStart, FATSize):
        if FATSize == 0: return None
        offset = FATStart
        end_address = FATStart + FATSize
        
        while offset < end_address:
            Start = disasm.get_word_from_rom(offset)
            Size = disasm.get_word_from_rom(offset+4) - Start
            disasm.write_section_in_file(Start, Size)
            offset += 0x8     
        return None
        
    def write_fnts_filenames(self, FNTStart, FNTSize):
        if FNTSize == 0: return None
        output = "\nFNT Filenames:"
        
        offset = FNTStart
        end_address = FNTStart + FNTSize
        
        SubTable = disasm.get_word_from_rom(FNTStart+0)
        IDFirstFileSubTable = disasm.get_hword_from_rom(FNTStart+4)
        TotalNrOfDirectories = disasm.get_hword_from_rom(FNTStart+6)
        output += "\nTotal Number of directories: " + str(TotalNrOfDirectories)
        
        FNTSub1Type = disasm.get_byte_from_rom(FNTStart+SubTable+0)
        if FNTSub1Type < 0x80:
            FNTSub1Length = FNTSub1Type
        else:
            FNTSub1Length = FNTSub1Type-0x80
        
        output += "\nType: " + hex(FNTSub1Type)
        output += "\nLength: " + hex(FNTSub1Length)
        output += "\n" + disasm.get_string_from_rom(FNTStart+SubTable+1, FNTSub1Length)
        
        SubTable = disasm.get_word_from_rom(FNTStart+0+8)
        IDFirstFileSubTable = disasm.get_hword_from_rom(FNTStart+4+8)
        TotalNrOfDirectories = disasm.get_hword_from_rom(FNTStart+6+8)
        output += "\nTotal Number of directories: " + str(TotalNrOfDirectories)
        
        FNTSub1Type = disasm.get_byte_from_rom(FNTStart+SubTable+0)
        if FNTSub1Type < 0x80:
            FNTSub1Length = FNTSub1Type
        else:
            FNTSub1Length = FNTSub1Type-0x80
        
        output += "\nType: " + hex(FNTSub1Type)
        output += "\nLength: " + hex(FNTSub1Length)
        output += "\n" + disasm.get_string_from_rom(FNTStart+SubTable+1, FNTSub1Length)
        
        return output
        
    def get_fnt_maintable(self, FNTStart, ID, path, NameDir, IDFirstFileSubTable, writeFiles=1):
        output = ""
        #output = "\n" + path + " " + hex(ID)
        
        SubTable = disasm.get_word_from_rom(FNTStart+(ID & 0xfff)*8)
        IDFirstFileSubTable = disasm.get_hword_from_rom(FNTStart+(ID & 0xfff)*8+4)
        TotalNrOfDirectories = disasm.get_hword_from_rom(FNTStart+(ID & 0xfff)*8+6)
        
        offset = 0
        i = 0
        
        while 1:
            FNTSub1Type = disasm.get_byte_from_rom(FNTStart+SubTable+offset+0)
            if FNTSub1Type == 0:
                return output
            elif FNTSub1Type < 0x80:
                FNTSub1Length = FNTSub1Type
            else:
                FNTSub1Length = FNTSub1Type-0x80
            
            #output += "\nType: " + hex(FNTSub1Type)
            #output += "\nLength: " + hex(FNTSub1Length)
            filename = NameDir + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length)
            output += "\n" + filename
            
            if FNTSub1Type > 0x80: # directory
                FNTSubID = disasm.get_byte_from_rom(FNTStart+SubTable+offset+1+FNTSub1Length)
                output += " - " + hex(FNTSubID)
                output += "\n" + hex(disasm.get_FileID_Start(FNTSubID)) + " - " + hex(disasm.get_FileID_End(FNTSubID))
                output += disasm.get_fnt_maintable(FNTStart, FNTSubID, path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", NameDir + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length) + "/", IDFirstFileSubTable, writeFiles)
            elif FNTSub1Type < 0x80: # file
                output += " - " + hex(IDFirstFileSubTable)
                output += "\n" + hex(disasm.get_FileID_Start(IDFirstFileSubTable)) + " - " + hex(disasm.get_FileID_End(IDFirstFileSubTable))
                
                if writeFiles == 1:
                    disasm.write_section_in_file_wfilename(disasm.get_FileID_Start(IDFirstFileSubTable), disasm.get_FileID_Size(IDFirstFileSubTable), path + disasm.get_string_from_rom(FNTStart+SubTable+offset+1, FNTSub1Length))
                
                FileFormat = chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable))) + chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable)+1)) + chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable)+2)) + chr(disasm.get_byte_from_rom(disasm.get_FileID_Start(IDFirstFileSubTable)+3))
                output += "\n" + FileFormat
                
                addRomSection(filename, disasm.get_FileID_Start(IDFirstFileSubTable), disasm.get_FileID_Size(IDFirstFileSubTable), IDFirstFileSubTable)
                IDFirstFileSubTable += 1
            
            offset += 1 + FNTSub1Length
            if FNTSub1Type > 0x80:
                offset += 2
        
        return output
        
    def get_FileID_Start(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        offset = FATStart + FileID*8
        
        Start = disasm.get_word_from_rom(offset)
        return Start
        
    def get_FileID_End(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        offset = FATStart + FileID*8
        
        End = disasm.get_word_from_rom(offset+4)
        return End
        
    def get_FileID_Size(self, FileID):
        FATStart = disasm.get_word_from_rom(0x48)
        offset = FATStart + FileID*8
        
        Start = disasm.get_word_from_rom(offset)
        End = disasm.get_word_from_rom(offset+4)
        return End-Start

    def export_icon(self, img_addr, img_size, pal_addr, pal_size, filename):
        if (img_size == 0) or (pal_size == 0): return None
        data = []
        tile = []
        tiles = []
        palette = []

        rom = self.rom
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        
        i = 0
        data_row = []
        while (img_addr+i) < (img_addr+img_size):            
            byte = rom[img_addr+i]
            bit1 = byte & 0xf
            bit2 = (byte >> 4)
            
            data_row.append(bit1)
            data_row.append(bit2)
            
            i += 1
            if (i % 4) == 0:
                tile += [data_row]
                data_row = []
            if (i % (4*8)) == 0:
                tiles += [tile]
                tile = []
        
        j = 0
        while j < 4:
            i = 0
            while i < 8:
                data += [tiles[0+j*4][i] + tiles[1+j*4][i] + tiles[2+j*4][i] + tiles[3+j*4][i]]
                i += 1
            j += 1
        
        i = 0
        while (pal_addr+i) < (pal_addr+pal_size):
            byte1 = rom[pal_addr+i]
            byte2 = rom[pal_addr+i+1]
            col = byte1 | (byte2<<8)
            colr = col&0x1f
            colg = (col>>5)&0x1f
            colb = (col>>10)&0x1f
            palette.append((colr*8, colg*8, colb*8))
            i += 2
        
        conv_pic(filename, data, palette)
        return None


    def extract_rom(self, filename="baserom.nds", filedir="", original_offset=0, end_address=0, debug=False):
        header_output = ""
        offset = original_offset
        
        rom_path = os.path.join(self.config.path, filename)
        self.rom = bytearray(open(rom_path, "rb").read())
        rom = self.rom

        Header = 0
        HeaderSize = 0x4000
        #disasm.write_section_in_file(Header, HeaderSize)
        disasm.write_section_in_file_wfilename(Header, HeaderSize, filedir + "/" + "header.bin")
        addRomSection("header.bin", Header, HeaderSize)
        
        ARM9ROM = disasm.get_word_from_rom(0x20)
        ARM9ROMSize = disasm.get_word_from_rom(0x2c) + 12
        #disasm.write_section_in_file(ARM9ROM, ARM9ROMSize)
        disasm.write_section_in_file_wfilename(ARM9ROM, ARM9ROMSize, filedir + "/" + "arm9.bin")
        addRomSection("arm9_full.bin", ARM9ROM, ARM9ROMSize)
        
        ARM9Overlay = disasm.get_word_from_rom(0x50)
        ARM9OverlaySize = disasm.get_word_from_rom(0x54)
        #disasm.write_section_in_file(ARM9Overlay, ARM9OverlaySize)
        disasm.write_section_in_file_wfilename(ARM9Overlay, ARM9OverlaySize, filedir + "/" + "y9.bin")
        #RomMap.append(RomSection("y9.bin", ARM9Overlay))
        
        #disasm.write_overlays_in_files(ARM9Overlay, ARM9OverlaySize)
        
        
        ARM7ROM = disasm.get_word_from_rom(0x30)
        ARM7ROMSize = disasm.get_word_from_rom(0x3c)
        disasm.write_section_in_file_wfilename(ARM7ROM, ARM7ROMSize, filedir + "/" + "arm7.bin")
        addRomSection("arm7.bin", ARM7ROM, ARM7ROMSize)
        
        ARM7Overlay = disasm.get_word_from_rom(0x58)
        ARM7OverlaySize = disasm.get_word_from_rom(0x5c)
        disasm.write_section_in_file_wfilename(ARM7Overlay, ARM7OverlaySize, filedir + "/" + "y7.bin")
        addRomSection("y7.bin", ARM7Overlay, ARM7OverlaySize)
        
        FNT = disasm.get_word_from_rom(0x40)
        FNTSize = disasm.get_word_from_rom(0x44)
        disasm.write_section_in_file_wfilename(FNT, FNTSize, filedir + "/" + "fnt.bin")
        addRomSection("fnt.bin", FNT, FNTSize)
        
        FAT = disasm.get_word_from_rom(0x48)
        FATSize = disasm.get_word_from_rom(0x4c)
        disasm.write_section_in_file_wfilename(FAT, FATSize, filedir + "/" + "fat.bin")
        addRomSection("fat.bin", FAT, FATSize)
        
        #disasm.write_fats_in_files(FAT, FATSize)
        
        Banner = disasm.get_word_from_rom(0x68)
        BannerSize = 0xa00;
        disasm.write_section_in_file_wfilename(Banner, BannerSize, filedir + "/" + "banner.bin")
        addRomSection("banner.bin", Banner, BannerSize)
        disasm.export_icon(Banner+0x20, 0x200, Banner+0x220, 0x20, filedir + "/" + "icon.png")
        
        GameTitle = disasm.get_string_from_rom(0x0, 12)
        Gamecode = disasm.get_string_from_rom(0xc, 4)
        Makercode = disasm.get_string_from_rom(0x10, 2)
        Unitcode = disasm.get_byte_from_rom(0x12)

        header_output += "Game Title:    " + GameTitle
        header_output += "\nGamecode:      " + Gamecode
        header_output += "\nMakercode:     " + Makercode
        header_output += "\nUnitcode:      " + hex(Unitcode)
        header_output += "\n\nARM9Rom:     " + hex(ARM9ROM) + " - " + hex(ARM9ROM + ARM9ROMSize)
        header_output += "\nARM9Overlay: " + hex(ARM9Overlay) + " - " + hex(ARM9Overlay + ARM9OverlaySize)
        header_output += "\nARM7Rom:     " + hex(ARM7ROM) + " - " + hex(ARM7ROM + ARM7ROMSize)
        header_output += "\nARM7Overlay: " + hex(ARM7Overlay)
        header_output += "\nFNT:         " + hex(FNT)
        header_output += "\nFAT:         " + hex(FAT)
        header_output += "\nIcon/Title:  " + hex(Banner)
        #header_output += disasm.write_fnts_filenames(FNT, FNTSize)
        disasm.write_fnts_filenames(FNT, FNTSize)
        header_output += "\n"
        header_output += disasm.get_fnt_maintable(FNT, 0, filedir + "/data/", "/data/", 0)
        #disasm.get_fnt_maintable(FNT, 0, "/", 0)
        
        disasm.write_overlays_in_files(ARM9Overlay, ARM9OverlaySize, filedir + "/overlay/", "/overlay/")
        
        disasm.write_section_in_file_wfilename(ARM9ROM, ARM7ROM-ARM9ROM, filedir + "/" + "arm9_full.bin")
        
        
        filename = filedir + "/" + "RomMap.map"
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'w')
        
        RomMap.sort(key=operator.attrgetter('address'))
        for item in RomMap:
            filesize = os.path.getsize(filedir + "/" + item.name)
            f.write(hex(item.address) + " " + str(item.name) + " " + hex(item.fileID) + " " + hex(item.size) + " " + hex(filesize) + "\n")
        
        
        headerfilename = filedir + "/" + "Header.txt"
        if not os.path.exists(os.path.dirname(headerfilename)):
            os.makedirs(os.path.dirname(headerfilename))
        fheader = open(headerfilename, 'w')
        fheader.write(header_output)
        
        
        output = ""
        return (output, offset)


# https://www.3dbrew.org/wiki/NCSD
class GCDVD(object): # CCI

    def __init__(self, config):
        self.config = config

    def diagnose(self, filename="baserom.nds", filedir="", outfile="", debug=False):
        rom = FileHandler()
        base_address = 0x0
        rom.init(filename, base_address)

        header_output = ""
        #header_output += rom.GetFileName()
        header_output += "FileSize:    " + hex(rom.GetFileSize())
        
        
        header_output += "\n\nGame Code:         " + str(rom.ReadString(0x0, 0x4))
        header_output += "\nMaker Code:        " + str(rom.ReadString(0x4, 0x2))
        header_output += "\nDVD Magic Word:    0x" + str(rom.ReadHexString(0x1c, 0x4))
        header_output += "\nGame Name:         " + str(rom.ReadString(0x20, 0x3e0))
        #rom.WriteSectionInFile( + ".bin", base_address+0x0, 0x440)
        #header_output += "boot.bin:   " + hex(0x0) + " - " + hex(0x440) + "\n"
        addRomSection("boot.bin", 0x0, 0x440)
        addRomSection("bi2.bin", 0x440, 0x2000)
        addRomSection("appldr.bin", 0x2440, rom.ReadWord(base_address+0x2440+0x14))
        addRomSection("fst.bin", rom.ReadWord(base_address+0x0+0x424), rom.ReadWord(base_address+0x0+0x428))
        addRomSection("dh.bin", rom.ReadWord(base_address+0x0+0x400), 1)
        
        dol = DolFS()
        header_output += dol.diagnose(rom, rom.ReadWord(base_address+0x0+0x420), debug)
        
        fs = RomFS()
        header_output += fs.diagnose(rom, rom.ReadWord(base_address+0x0+0x424), debug)
        
        header_output += "\n\n"
        RomMap.sort(key=operator.attrgetter('address'))
        for item in RomMap:
            header_output += hex(item.address) + " " + str(item.name) + " " + hex(item.fileID) + " " + hex(item.size) + "\n"
        """
        NCSDImageSize = rom.ReadWord(0x104)
        header_output += "\nNCSDImageSize: " + hex(NCSDImageSize) + " (" + hex(NCSDImageSize*MediaUnit) + ")"
        header_output += "\nMediaID:       " + str(rom.ReadHexString(0x108, 8))
        offsets = []
        lengths = []
        for i in range(8):
            offsets += [rom.ReadWord(0x120+i*8)*MediaUnit]
            lengths += [rom.ReadWord(0x120+4+i*8)*MediaUnit]
            header_output += "\nPartition " + str(i) + ":       " + hex(offsets[i]) + " - " + hex(lengths[i])
        """
        
        headerfilename = outfile
        if not os.path.exists(os.path.dirname(headerfilename)) and os.path.dirname(headerfilename):
            os.makedirs(os.path.dirname(headerfilename))
        fheader = open(headerfilename, 'w')
        fheader.write(header_output)
        
        output = ""
        return (output)


# https://www.3dbrew.org/wiki/RomFS
class RomFS(object):

    def diagnose(self, file, base_address, debug=False):
        output = ""
        
        output += "RomFS: @ " + hex(base_address) + "\n"
        
        dir = RomFS_RootDir()
        output += dir.diagnose(file, base_address, 0x0, "", debug)
        dirs = ""
        for i in range(file.ReadWord(base_address+0x8)):
            if(file.ReadByte(base_address+0xc*i) == 1):
                dir2 = RomFS_Dir()
                #output += dir2.diagnose(file, base_address, 0xc*i, file.ReadWord(base_address+0x8)*0xc, "", debug)
                dirs = dir2.diagnose(file, base_address, 0xc*i, file.ReadWord(base_address+0x8)*0xc, "", debug) + "/"
            elif(file.ReadByte(base_address+0xc*i) == 0):
                file2 = RomFS_File()
                output += file2.diagnose(file, base_address, 0xc*i, file.ReadWord(base_address+0x8)*0xc, dirs, debug)
        
        return output


# https://www.3dbrew.org/wiki/RomFS
class RomFS_RootDir(object):

    def diagnose(self, file, base_address, offset, path, debug=False):
        output = ""
        
        flags = file.ReadByte(base_address+0x0) # 0: file, 1: directory
        offset_string = (file.ReadWord(base_address+0x0))&0xffffff
        parent_offset = file.ReadWord(base_address+0x4)
        num_entries = file.ReadWord(base_address+0x8)
        
        output = "\nRootDir: " + hex(offset_string) + " - " + hex(parent_offset) + " - " + hex(num_entries)
        
        return output


# https://www.3dbrew.org/wiki/RomFS
class RomFS_Dir(object):

    def diagnose(self, file, base_address, offset, string_table, path, debug=False):
        output = ""
        
        flags = file.ReadByte(base_address+offset+0x0) # 0: file, 1: directory
        offset_string = ((file.ReadWord(base_address+offset+0x0))&0xffffff) + string_table
        string = file.ReadString0(base_address+offset_string, 0x20)
        parent_offset = file.ReadWord(base_address+offset+0x4)
        next_offset = file.ReadWord(base_address+offset+0x8)
        
        #output = "\nDir: " + hex(offset_string) + " (" + string + ") - " + hex(parent_offset) + " - " + hex(next_offset)
        output = string
        
        """
        dir = RomFS_Dir()
        if OffsetOfFirstChildDirectory != 0xffffffff:
            output += dir.diagnose(file, base_address, base_address_file, FileDataOffset, OffsetOfFirstChildDirectory, path+Name+"/", debug)
        
        dir = RomFS_Dir()
        if OffsetOfNextSiblingDirectory != 0xffffffff:
            output += dir.diagnose(file, base_address, base_address_file, FileDataOffset, OffsetOfNextSiblingDirectory, path, debug)
        
        fil = RomFS_File()
        if OffsetOfFirstFile != 0xffffffff:
            output += fil.diagnose(file, base_address_file, FileDataOffset, OffsetOfFirstFile, path, debug)
        """
        
        return output


# https://www.3dbrew.org/wiki/RomFS
class RomFS_File(object):

    def diagnose(self, file, base_address, offset, string_table, path, debug=False):
        output = ""
        
        flags = file.ReadByte(base_address+offset+0x0) # 0: file, 1: directory
        offset_string = ((file.ReadWord(base_address+offset+0x0))&0xffffff) + string_table
        string = file.ReadString0(base_address+offset_string, 0x20)
        file_offset = file.ReadWord(base_address+offset+0x4)
        file_length = file.ReadWord(base_address+offset+0x8)
        
        #output = "\nFile: " + hex(offset_string) + " (" + string + ") - " + hex(file_offset) + " - " + hex(file_length)
        addRomSection(path + string, file_offset, file_length)
        
        if string.endswith(".MAP"):# or Name.endswith(".bcstm"):
            file.WriteSectionInFile(string, file_offset, file_length)
        
        return output


# https://www.3dbrew.org/wiki/ExeFS
class DolFS(object):

    def diagnose(self, file, base_address, debug=False):
        header_output = "\n"
        
        TextPos = []
        DataPos = []
        TextMem = []
        DataMem = []
        TextSize = []
        DataSize = []
        TotSize = 0x100
        for i in range(6):
            TextPos += [file.ReadWord(base_address+0x0+0x4*i)]
            TextMem += [file.ReadWord(base_address+0x48+0x4*i)]
            TextSize += [file.ReadWord(base_address+0x90+0x4*i)]
            TotSize += TextSize[i]
        
        for i in range(6):
            header_output += "Text " + hex(TextPos[i]) + ":   " + hex(TextMem[i]) + " - " + hex(TextSize[i]) + "\n"
        
        for i in range(10):
            DataPos += [file.ReadWord(base_address+0x1c+0x4*i)]
            DataMem += [file.ReadWord(base_address+0x64+0x4*i)]
            DataSize += [file.ReadWord(base_address+0xac+0x4*i)]
            TotSize += DataSize[i]
        
        for i in range(10):
            header_output += "Data " + hex(DataPos[i]) + ":   " + hex(DataMem[i]) + " - " + hex(DataSize[i]) + "\n"
        
        header_output += "\n"
        
        for i in range(6):
            file.WriteSectionInFile("Text_" + hex(TextMem[i]) + ".bin", base_address+TextPos[i], TextSize[i])
        
        for i in range(10):
            file.WriteSectionInFile("Data_" + hex(DataMem[i]) + ".bin", base_address+DataPos[i], DataSize[i])
        
        file.WriteSectionInFile("bootfile.dol", base_address, TotSize)
        addRomSection("bootfile.dol", base_address, TotSize)
        
        return header_output

        
if __name__ == "__main__":
    conf = configuration.Config()
    dvd = GCDVD(conf)
    
    filename = ""
    outdir = ""
    outfile = ""
    output = ""
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-x":
            cmd = "unpack"
            filename = sys.argv[i+1]
            outdir = os.path.splitext(filename)[0]
            i += 2
        elif sys.argv[i] == "-d":
            cmd = "diagnose"
            filename = sys.argv[i+1]
            outdir = os.path.splitext(filename)[0]
            outfile = filename + "_Header.txt"
            i += 2
        elif sys.argv[i] == "-of":
            outdir = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-o":
            outfile = sys.argv[i+1]
            i += 2
    
    print(cmd + ': ' + filename)
    """
    if cmd == "unpack":
        output = cci.extract_rom(filename, outdir)[0]
    """
    if cmd == "diagnose":
        print(cmd + ' to ' + outfile)
        output = dvd.diagnose(filename, outdir, outfile)
    
    print output
