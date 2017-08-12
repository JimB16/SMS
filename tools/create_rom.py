# -*- coding: utf-8 -*-
"""
---
"""

import os
import sys
import struct
import operator
from copy import copy, deepcopy
from ctypes import c_int8

import configuration

class fstDir():
    def __init__(self, name, flag, FileID=0, FileSize=0):
        self.name = name
        self.lower = name.lower()
        self.subDirs = []
        self.Files = []
        self.flag = flag
        self.FileID = FileID
        self.FileSize = FileSize
        self.offset = 0
    def getSubDir(self, name):
        for dir in self.subDirs:
            if dir.name == name:
                return dir
        return None
    def getFile(self, name):
        for file in self.Files:
            if file == name:
                return name
        return None
    def addSubDir(self, name):
        subDir = self.getSubDir(name)
        if subDir == None:
            self.subDirs.append(fstDir(name, 1))
        self.subDirs = sorted(self.subDirs, key=lambda fstDir: fstDir.lower.replace("_", "}"))
        return self.getSubDir(name)
    def addFile(self, name, FileID, FileSize):
        subDir = self.getSubDir(name)
        if subDir == None:
            self.subDirs.append(fstDir(name, 0, FileID, FileSize))
        self.subDirs = sorted(self.subDirs, key=lambda fstDir: fstDir.lower.replace("_", "}"))
        return self.getSubDir(name)
        """
        if self.getFile(name) == None:
            self.Files.append(name)
        self.Files = sorted(self.Files)
        return self.getSubDir(name)
        """
    def printDir(self, offset):
        string = offset + self.name + " " + hex(self.getNrOfEntries()) + " " + hex(self.FileID) + " " + hex(self.offset) + "\n"
        for i in self.subDirs:
            #string += offset + i.name + "\n"
            string += i.printDir(offset + self.name + "/")
        for i in self.Files:
            string += offset + self.name + "/" + i + "\n"
        return string
    def createFST(self, string_table_length, parentID, ownID):
        # self.subDirs = sorted(self.subDirs, key=lambda fstDir: fstDir.offset)
        
        if self.FileID == -0x1:
            return ([], "")
        
        Word2 = 0
        Word3 = 0
        string = ""
        if self.name != "":
            string += self.name + "\0"
            if self.flag == 0: # file
                Word3 = self.FileSize
                Word2 = self.offset
            else: # directory
                Word3 = ownID + self.getNrOfEntries()+1 # next_offset
                Word2 = parentID # parent_FileID
        else: # root
            Word3 = self.getNrOfEntries()+1
        
        FST = [self.flag<<24|string_table_length, Word2, Word3]
        
        n = 0
        for i in self.subDirs:
            res = i.createFST(string_table_length + len(string), ownID, ownID+n+1)
            FST += res[0]
            string += res[1]
            if res[1] != "":
                n += 1 + i.getNrOfEntries()
        
        return (FST, string)
    def getNrOfEntries(self):
        nr = 0
        for i in self.subDirs:
            if i.FileID != -1:
                nr += 1
            nr += i.getNrOfEntries()
        return nr
    def setOffset(self, offset):
        self.offset = offset
        return offset+self.FileSize
    def getLengthOfStrings(self):
        l = len(self.name) + 1
        for i in self.subDirs:
            if i.FileID != -1:
                l += i.getLengthOfStrings()
        return l
    def setFileSize(self, FileSize):
        self.FileSize = FileSize


RootDir = fstDir("", 1)
            

def calcSizeOfFST():
    size = RootDir.getNrOfEntries()*0xc+0xc
    size += RootDir.getLengthOfStrings()
    return size-1 # subtract emptyChar of RootDir

def addFileToFST(name, FileID, FileSize):
    curDir = RootDir
    name = name[1:]

    while name != "":
        pos = name.find("/")
        if pos != -1:
            curDir = curDir.addSubDir(name[0:pos])
            name = name[pos+1:]
        else:
            curDir.addFile(name, FileID, FileSize)
            name = ""
            
def setOffsetOfFile(name, offset):
    curDir = RootDir
    name = name[1:]

    while name != "":
        pos = name.find("/")
        if pos != -1:
            curDir = curDir.getSubDir(name[0:pos])
            name = name[pos+1:]
        else:
            #name = ""
            curDir = curDir.getSubDir(name)
            return curDir.setOffset(offset)
    return 0
            
def setFileSize(name, FileSize):
    curDir = RootDir
    name = name[1:]

    while name != "":
        pos = name.find("/")
        if pos != -1:
            curDir = curDir.getSubDir(name[0:pos])
            name = name[pos+1:]
        else:
            curDir = curDir.getSubDir(name)
            curDir.setFileSize(FileSize)
            return 1
    return 0
        


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

def alignAdr(adr, alignVal):
    if (adr & (alignVal-1)) != 0:
        adr = adr & 0x100000000-alignVal
        adr += alignVal
    return adr

def getOutputRomMap():
    output = ""
    old_address = 0
    
    RomMap.sort(key=operator.attrgetter('address'))
    for item in RomMap:
        if old_address != item.address:
            output += hex(old_address) + " " + "/Unknown_" + hex(old_address) + ".bin" + " " + hex(-1) + " " + hex(item.address-old_address) + "\n"
        output += hex(item.address) + " " + str(item.name) + " " + hex(item.fileID) + " " + hex(item.size) + "\n"
        old_address = alignAdr(item.address + item.size, 4)
    
    return output

def getOutputRomMapFileID():
    output = ""
    
    RomMap.sort(key=operator.attrgetter('fileID'))
    for item in RomMap:
        output += hex(item.fileID) + " " + str(item.name) + " "+ hex(item.address) + " " + hex(item.size) + "\n"
    
    return output


def words(fileobj):
    for line in fileobj:
        for word in line.split():
            yield word

class Disassembler(object):
    def __init__(self, config):
        """
        Setup the class instance.
        """
        self.config = config

    def fill_rom(self, filepath, file, align, filler):
        #statinfo = int(os.path.getsize(filepath))
        statinfo = file.tell()
        rest = statinfo % align
        if rest != 0: rest = align - rest
        i = 0
        
        while i < rest:
            file.write(filler)
            i += 1
        
        print "fill rom " + filepath + ": @" + hex(file.tell()) + " for " + hex(rest)
        return None

    def create_header(self, dir, debug=False):
        filename = dir + "/header_test.bin"
        
        if os.path.dirname(filename) != "":
            if not os.path.exists(os.path.dirname(filename)):
                os.makedirs(os.path.dirname(filename))
        output_header = open(filename, 'wb')

        #output_fat.seek(8*int(filenames[i][4], 16), 0)
        #output_fat.write(struct.pack('I', FileStart))
        
        b = bytearray()
        GameTitle = "POKEMON PL\0\0"
        b.extend(GameTitle)
        Gamecode = "CPUE"
        b.extend(Gamecode)
        Makercode = "01"
        b.extend(Makercode)
        
        output_header.write(b)
        
        Unitcode = 0 # (00h=NDS, 02h=NDS+DSi, 03h=DSi) (bit1=DSi)
        output_header.write(struct.pack('B', Unitcode))
        EncryptionSeedSelect = 0 # (00..07h, usually 00h)
        output_header.write(struct.pack('B', EncryptionSeedSelect))
        Devicecapacity = 10 # (Chipsize = 128KB SHL nn) (eg. 7 = 16MB)
        output_header.write(struct.pack('B', Devicecapacity))
        #Reserved (zero filled)
        for i in range(7):
            output_header.write(struct.pack('B', 0))
        # Reserved    (zero)                      (except, used on DSi)
        output_header.write(struct.pack('B', 0))
        NDSRegion = 0 # (00h=Normal, 80h=China, 40h=Korea) (other on DSi)
        output_header.write(struct.pack('B', NDSRegion))
        ROMVersion = 0 # (usually 00h)
        output_header.write(struct.pack('B', ROMVersion))
        Autostart = 0 # (Bit2: Skip "Press Button" after Health and Safety)
                      # (Also skips bootmenu, even in Manual mode & even Start pressed)
        output_header.write(struct.pack('B', Autostart))
        
        ARM9_rom_offset = 0x4000 # (4000h and up, align 1000h)
        output_header.write(struct.pack('I', ARM9_rom_offset))
        ARM9_entry_address = 0x2000800 # (2000000h..23BFE00h)
        output_header.write(struct.pack('I', ARM9_entry_address))
        ARM9_ram_address = 0x2000000 # (2000000h..23BFE00h)
        output_header.write(struct.pack('I', ARM9_ram_address))
        ARM9_size = 0x1023f8 # (max 3BFE00h) (3839.5KB)
        output_header.write(struct.pack('I', ARM9_size))
        
        ARM7_rom_offset = 0x409800 # (8000h and up)
        output_header.write(struct.pack('I', ARM7_rom_offset))
        ARM7_entry_address = 0x2380000 # (2000000h..23BFE00h, or 37F8000h..3807E00h)
        output_header.write(struct.pack('I', ARM7_entry_address))
        ARM7_ram_address = 0x2380000 # (2000000h..23BFE00h, or 37F8000h..3807E00h)
        output_header.write(struct.pack('I', ARM7_ram_address))
        ARM7_size = 0x277fc # (max 3BFE00h, or FE00h) (3839.5KB, 63.5KB)
        output_header.write(struct.pack('I', ARM7_size))
        
        FNT_offset = 0x431000
        output_header.write(struct.pack('I', FNT_offset))
        FNT_size = 0x1bb4
        output_header.write(struct.pack('I', FNT_size))
        FAT_offset = 0x432c00
        output_header.write(struct.pack('I', FAT_offset))
        FAT_size = 0xe70
        output_header.write(struct.pack('I', FAT_size))
        
        ARM9_overlay_offset = 0x106600
        output_header.write(struct.pack('I', ARM9_overlay_offset))
        ARM9_overlay_size = 0xf40
        output_header.write(struct.pack('I', ARM9_overlay_size))
        ARM7_overlay_offset = 0x0
        output_header.write(struct.pack('I', ARM7_overlay_offset))
        ARM7_overlay_size = 0x0
        output_header.write(struct.pack('I', ARM7_overlay_size))
        
        Port40001A4h_normalcmds = 0x00416657 # (usually 00586000h)
        output_header.write(struct.pack('I', Port40001A4h_normalcmds))
        Port40001A4h_key1cmds = 0x081808f8 # (usually 001808F8h)
        output_header.write(struct.pack('I', Port40001A4h_key1cmds))
        IconTitleoffset = 0x433c00 # (0=None) (8000h and up)
        output_header.write(struct.pack('I', IconTitleoffset))
        SecureAreaChecksum = 0xf8b8 # CRC-16 of [[020h]..00007FFFh]
        output_header.write(struct.pack('H', SecureAreaChecksum))
        SecureAreaDelay = 0xd7e # (in 131kHz units) (051Eh=10ms or 0D7Eh=26ms)
        output_header.write(struct.pack('H', SecureAreaDelay))
        ARM9AutoLoadListRAMAddress = 0x2000aac # (?)
        output_header.write(struct.pack('I', ARM9AutoLoadListRAMAddress))
        ARM7AutoLoadListRAMAddress = 0x2380188 # (?)
        output_header.write(struct.pack('I', ARM7AutoLoadListRAMAddress))
        # Secure Area Disable (by encrypted "NmMdOnly") (usually zero)
        output_header.write(struct.pack('I', 0))
        output_header.write(struct.pack('I', 0))
        TotalUsedROMsize = 0x63c303c # (remaining/unused bytes usually FFh-padded)
        output_header.write(struct.pack('I', TotalUsedROMsize))
        ROMHeaderSize = 0x4000 # (4000h)
        output_header.write(struct.pack('I', ROMHeaderSize))
        #Reserved (zero filled) (except, [88h..93h] used on DSi)
        output_header.write(struct.pack('B', 0xa0))
        output_header.write(struct.pack('B', 0x4b))
        for i in range(0x38-2):
            output_header.write(struct.pack('B', 0x0))
        # Nintendo Logo (compressed bitmap, same as in GBA Headers)
        b = bytearray([0x24, 0xFF, 0xAE, 0x51, 0x69, 0x9A, 0xA2, 0x21, 0x3D, 0x84, 0x82, 0x0A, 0x84, 0xE4, 0x09, 0xAD, 0x11, 0x24, 0x8B, 0x98, 0xC0, 0x81, 0x7F, 0x21, 0xA3, 0x52, 0xBE, 0x19, 0x93, 0x09, 0xCE, 0x20, 0x10, 0x46, 0x4A, 0x4A, 0xF8, 0x27, 0x31, 0xEC, 0x58, 0xC7, 0xE8, 0x33, 0x82, 0xE3, 0xCE, 0xBF, 0x85, 0xF4, 0xDF, 0x94, 0xCE, 0x4B, 0x09, 0xC1, 0x94, 0x56, 0x8A, 0xC0, 0x13, 0x72, 0xA7, 0xFC, 0x9F, 0x84, 0x4D, 0x73, 0xA3, 0xCA, 0x9A, 0x61, 0x58, 0x97, 0xA3, 0x27, 0xFC, 0x03, 0x98, 0x76, 0x23, 0x1D, 0xC7, 0x61, 0x03, 0x04, 0xAE, 0x56, 0xBF, 0x38, 0x84, 0x00, 0x40, 0xA7, 0x0E, 0xFD, 0xFF, 0x52, 0xFE, 0x03, 0x6F, 0x95, 0x30, 0xF1, 0x97, 0xFB, 0xC0, 0x85, 0x60, 0xD6, 0x80, 0x25, 0xA9, 0x63, 0xBE, 0x03, 0x01, 0x4E, 0x38, 0xE2, 0xF9, 0xA2, 0x34, 0xFF, 0xBB, 0x3E, 0x03, 0x44, 0x78, 0x00, 0x90, 0xCB, 0x88, 0x11, 0x3A, 0x94, 0x65, 0xC0, 0x7C, 0x63, 0x87, 0xF0, 0x3C, 0xAF, 0xD6, 0x25, 0xE4, 0x8B, 0x38, 0x0A, 0xAC, 0x72, 0x21, 0xD4, 0xF8, 0x07])
        output_header.write(b)
        # Nintendo Logo Checksum, CRC-16 of [0C0h-15Bh], fixed CF56h
        output_header.write(struct.pack('H', 0xcf56))
        # Header Checksum, CRC-16 of [000h-15Dh]
        output_header.write(struct.pack('H', 0xce5e))
        
        Debug_rom_offset = 0 # (0=none) (8000h and up)       ;only if debug
        output_header.write(struct.pack('I', Debug_rom_offset))
        Debug_size = 0 # (0=none) (max 3BFE00h)        ;version with
        output_header.write(struct.pack('I', Debug_size))
        Debug_ram_address = 0 # (0=none) (2400000h..27BFE00h) ;SIO and 8MB
        output_header.write(struct.pack('I', Debug_ram_address))
        # Reserved (zero filled) (transferred, and stored, but not used)
        output_header.write(struct.pack('I', 0))
        #Reserved (zero filled) (transferred, but not stored in RAM)
        for i in range(0x90):
            output_header.write(struct.pack('B', 0x0))
        
        for i in range(0x4000-0x200):
            output_header.write(struct.pack('B', 0x0))
        
        return
        

    def create_rom(self, dir, filename, fst_filename, fstmap, debug=False):
        #disasm.create_header(dir, debug)
        
        with open(fstmap) as fin:
            for line in fin:
                words = line.split() # address, path+name, fileID, size
                if len(words) == 4:
                    filepath = os.path.join(self.config.path, dir + words[1])
                    FileSize = os.path.getsize(filepath)
                    #if (words[1] == "/appldr.bin") or (words[1] == "/bootfile.dol"):
                    #    FileSize = alignAdr(FileSize, 0x100)
                    #FileSize = int(words[3], 16)
                    addRomSection(words[1], int(words[0], 16), FileSize, int(words[2], 16))
                    addFileToFST(words[1], int(words[2], 16), FileSize)
        
        setFileSize("/fst.bin", alignAdr(calcSizeOfFST(), 4))
        offset = 0
        with open(fstmap) as fin:
            for line in fin:
                words = line.split() # address, path+name, fileID, size
                if len(words) == 4:
                    offset = setOffsetOfFile(words[1], offset)
                    if (words[1] == "/appldr.bin") or (words[1] == "/bootfile.dol"):
                        offset = alignAdr(offset, 0x100)
                    offset = alignAdr(offset, 4)
    
        #offset = setOffsetOfFile("/boot.bin", 0)
        #offset = setOffsetOfFile("/bi2.bin", offset)
        #offset = setOffsetOfFile("/appldr.bin", offset)
        #offset = setOffsetOfFile("/bootfile.dol", offset)
        #offset = setOffsetOfFile("/fst.bin", offset)
        #offset = setOffsetOfFile("/Unknown_0x406d18.bin", offset)
        #offset = setOffsetOfFile("/marioEU.MAP", offset)
    
        output = ""
        output += getOutputRomMapFileID() + "\n"
        #output += str(RootDir.subDirs) + "\n"
        output += RootDir.printDir("")
        output += "\nFSTSize: " + hex(calcSizeOfFST())
        # (FST, string)
        newFST = RootDir.createFST(0, 0, 0)
        output += "\CreatedFST: " + str(newFST)

        
        # write new fst.bin-file
        if os.path.dirname(fst_filename) != "":
            if not os.path.exists(os.path.dirname(fst_filename)):
                os.makedirs(os.path.dirname(fst_filename))
        output_fst = open(fst_filename, 'wb')
        for i in newFST[0]:
            byte1 = i & 0xff
            byte2 = (i >> 8) & 0xff
            byte3 = (i >> 16) & 0xff
            byte4 = (i >> 24) & 0xff
            output_fst.write(struct.pack('B', byte4))
            output_fst.write(struct.pack('B', byte3))
            output_fst.write(struct.pack('B', byte2))
            output_fst.write(struct.pack('B', byte1))
        output_fst.write(newFST[1])
        output_fst.close()
        
        
        if os.path.dirname(filename) != "":
            if not os.path.exists(os.path.dirname(filename)):
                os.makedirs(os.path.dirname(filename))
        output_rom = open(filename, 'wb')

        bootfile_offset = 0
        fst_offset = 0
        
        with open(fstmap) as fin:
            for line in fin:
                words = line.split() # address, path+name, fileID, size
                if len(words) == 4:
                    filepath = os.path.join(self.config.path, dir + words[1])
                    print "writing " + dir + words[1]
                    filepart = bytearray(open(filepath, "rb").read())
                    
                    if (words[1] == "/bootfile.dol"):
                        bootfile_offset = output_rom.tell()
                        print("bootfile_offset: " + hex(bootfile_offset))
                    elif (words[1] == "/fst.bin"):
                        fst_offset = output_rom.tell()
                        print("fst_offset: " + hex(fst_offset))

                    output_rom.write(filepart)
                    
                    if (words[1] == "/appldr.bin") or (words[1] == "/bootfile.dol"):
                        disasm.fill_rom(filename, output_rom, 0x100, '\x00')
                    else:
                        disasm.fill_rom(filename, output_rom, 0x4, '\x00')
                        
        output_rom.seek(0x420, 0)
        output_rom.write(struct.pack('>I', int(bootfile_offset)))
        output_rom.seek(0x424, 0)
        output_rom.write(struct.pack('>I', int(fst_offset)))
        
        """
        offset = 0
        filenames = []
        
        #fin = open('./data/RomMap.map', 'r')
        with open(dir + "/RomMap.map") as fin:
            for line in fin:
                words = line.split()
                filenames.append((words[1], 0x200, '\x00', words[0], words[2])) # filenames.append(("data/header.bin", 0x4000, '\x00'))
                #filenames.append((words[1], words[0], '\x00')) # filenames.append(("data/header.bin", 0x4000, '\x00'))
        
        
        
        if os.path.dirname(fst_filename) != "":
            if not os.path.exists(os.path.dirname(fst_filename)):
                os.makedirs(os.path.dirname(fst_filename))
        output_fat = open(fst_filename, 'r+b')

        FileStart = 0
        for i in range(6):
            filepath = os.path.join(self.config.path, dir + "/" + filenames[i][0])
            FileSize = os.path.getsize(filepath)
            align = (FileSize % 0x200)
            if align != 0:
                align = 0x200 - align
            FileStart = FileStart + FileSize + align
        
        i = 6
        #FileStart = 0x434600
        FileEnd = FileStart
        align = 0
        while i < len(filenames):
            filepath = os.path.join(self.config.path, dir + "/" + filenames[i][0])
            
            FileStart = FileEnd + align
            FileSize = os.path.getsize(filepath)
            align = (FileSize % 0x200)
            if align != 0:
                align = 0x200 - align
            FileEnd = FileStart + FileSize
            #output += hex(FileStart) + " " + hex(FileEnd) + " " + hex(FileSize) + "\n"
            
            output_fat.seek(8*int(filenames[i][4], 16), 0)
            output_fat.write(struct.pack('I', FileStart))
            output_fat.seek(8*int(filenames[i][4], 16)+4, 0)
            output_fat.write(struct.pack('I', FileEnd))

            i += 1
        
        

        if os.path.dirname(filename) != "":
            if not os.path.exists(os.path.dirname(filename)):
                os.makedirs(os.path.dirname(filename))
        output_rom = open(filename, 'wb')

        i = 0
        while i < len(filenames):
            filepath = os.path.join(self.config.path, dir + "/" + filenames[i][0])
            filepart = bytearray(open(filepath, "rb").read())

            output_rom.write(filepart)
            i += 1
            disasm.fill_rom(filepath, output_rom, 0x200, '\xff')
        """
        return output


if __name__ == "__main__":
    conf = configuration.Config()
    disasm = Disassembler(conf)

    filename = ''
    fstmap = ''
    fst_file = ''
    dir = ''
    debugFlag = False
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-dir":
            dir = sys.argv[i+1]
            i += 2
        if sys.argv[i] == "-fst":
            fst_file = sys.argv[i+1]
            i += 2
        if sys.argv[i] == "-fstmap":
            fstmap = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-o":
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-debug":
            filelist_on = 0
            debugFlag = True
            i += 2
        else:
            i += 1

    output = disasm.create_rom(dir, filename, fst_file, fstmap)
    print output
