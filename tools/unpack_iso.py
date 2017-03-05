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

def getOutputRomMap(rom, filedir, export=0):
    output = ""
    old_address = 0
    
    RomMap.sort(key=operator.attrgetter('address'))
    for item in RomMap:
        if old_address != item.address:
            if export:
                rom.WriteSectionInFile(filedir + "Unknown_" + hex(old_address) + ".bin", old_address, item.address-old_address)
            #output += "missing " + hex(old_address) + " to " + hex(item.address) + "\n"
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


class DirName():
    def __init__(self, name, start, end):
        self.name = name
        self.start = start
        self.end = end

DirNames = []

def getDirPath(FileID):
    string = ""
    for dir in DirNames:
        if (FileID >= dir.start) & (FileID < dir.end):
            string += dir.name + "/"
    return string

def addDirName(name, start, end):
    DirNames.append(DirName(name, start, end))



class GCDVD(object):

    def __init__(self, config):
        self.config = config

    def diagnose(self, filename="baserom.nds", filedir="", outfile="", outFileList="", export=0, debug=False):
        rom = FileHandler()
        base_address = 0x0
        rom.init(filename, base_address)

        header_output = ""
        header_output += rom.GetFileName() + "\n"
        header_output += "FileSize:    " + hex(rom.GetFileSize()) + "\n"
        
        
        header_output += "\nGame Code:         " + str(rom.ReadString(0x0, 0x4))
        header_output += "\nMaker Code:        " + str(rom.ReadString(0x4, 0x2))
        header_output += "\nDVD Magic Word:    0x" + str(rom.ReadHexString(0x1c, 0x4))
        header_output += "\nGame Name:         " + str(rom.ReadString(0x20, 0x3e0))
        if export:
            rom.WriteSectionInFile(filedir + "boot.bin", 0x0, 0x440)
        addRomSection("/boot.bin", 0x0, 0x440)
        if export:
            rom.WriteSectionInFile(filedir + "bi2.bin", 0x440, 0x2000)
        addRomSection("/bi2.bin", 0x440, 0x2000)
        
        apploader_entry = rom.ReadWord(0x2440+0x10)
        header_output += "\nApploader Entrypoint: " + hex(apploader_entry)
        appsize = rom.ReadWord(0x2440+0x14) # Apploader Size
        appsize += rom.ReadWord(0x2440+0x18) # Trailer Size
        append = alignAdr(0x2440 + appsize, 0x100)
        if export:
            rom.WriteSectionInFile(filedir + "appldr.bin", 0x2440, appsize)
        addRomSection("/appldr.bin", 0x2440, append-0x2440)
        
        fst_offset = rom.ReadWord(base_address+0x0+0x424)
        fst_size = rom.ReadWord(base_address+0x0+0x428)
        if export:
            rom.WriteSectionInFile(filedir + "fst.bin", fst_offset, fst_size)
        addRomSection("/fst.bin", fst_offset, fst_size)
        #addRomSection("dh.bin", rom.ReadWord(base_address+0x0+0x400), 1)
        
        dol = DolFS()
        header_output += dol.diagnose(rom, rom.ReadWord(base_address+0x0+0x420), filedir, export, debug)
        
        fs = RomFS()
        header_output += fs.diagnose(rom, rom.ReadWord(base_address+0x0+0x424), filedir, export, debug)
        
        header_output += "\n\n"
        FileList = getOutputRomMap(rom, filedir, export) + "\n"
        header_output += FileList
        header_output += getOutputRomMapFileID()
        
        if outFileList != "":
            outFileList = filedir + outFileList
            if not os.path.exists(os.path.dirname(outFileList)) and os.path.dirname(outFileList):
                os.makedirs(os.path.dirname(outFileList))
            fFileList = open(outFileList, 'w')
            fFileList.write(FileList)
        
        headerfilename = filedir + outfile
        if not os.path.exists(os.path.dirname(headerfilename)) and os.path.dirname(headerfilename):
            os.makedirs(os.path.dirname(headerfilename))
        fheader = open(headerfilename, 'w')
        fheader.write(header_output)
        
        output = ""
        return (output)


class RomFS(object):

    def diagnose(self, file, base_address, filedir="", export=0, debug=False):
        output = ""
        
        dir = RomFS_RootDir()
        output += dir.diagnose(file, base_address, 0x0, "", debug)
        dirs = ""
        num_entries = file.ReadWord(base_address+0x8)
        for i in range(num_entries):
            file_offset = 0xc*i
            
            if(file.ReadByte(base_address+file_offset) == 1):
                dir2 = RomFS_Dir()
                #output += dir2.diagnose(file, base_address, 0xc*i, num_entries*0xc, "", debug)
                dirs = dir2.diagnose(file, base_address, file_offset, num_entries*0xc, "", debug) + "/"
            elif(file.ReadByte(base_address+file_offset) == 0):
                file2 = RomFS_File()
                output += file2.diagnose(file, base_address, file_offset, num_entries*0xc, getDirPath(i), filedir, export, debug)
        
        return output


class RomFS_RootDir(object):

    def diagnose(self, file, base_address, offset, path, debug=False):
        output = ""
        
        flags = file.ReadByte(base_address+0x0) # 0: file, 1: directory
        offset_string = (file.ReadWord(base_address+0x0))&0xffffff
        parent_offset = file.ReadWord(base_address+0x4)
        num_entries = file.ReadWord(base_address+0x8)
        
        output = "\nRootDir: " + hex(offset_string) + " - " + hex(parent_offset) + " - " + hex(num_entries)
        
        return output


class RomFS_Dir(object):

    def diagnose(self, file, base_address, offset, string_table, path, debug=False):
        output = ""
        
        flags = file.ReadByte(base_address+offset+0x0) # 0: file, 1: directory
        offset_string = ((file.ReadWord(base_address+offset+0x0))&0xffffff) + string_table
        string = file.ReadString0(base_address+offset_string, 0x20)
        parent_offset = file.ReadWord(base_address+offset+0x4)
        next_offset = file.ReadWord(base_address+offset+0x8)
        
        dirs = ""
        #if parent_offset != 0:
        #    dir2 = RomFS_Dir()
        #    dirs = dir2.diagnose(file, base_address, parent_offset*0xc, string_table, path, debug) + "/"
        if offset == 0:
            string = ""
        
        #output = "\nDir: " + hex(offset_string) + " (" + string + ") - " + hex(parent_offset) + " - " + hex(next_offset)
        output = dirs + string
        
        print "offset: " + hex(offset/0xc) + " (parent: " + hex(parent_offset) + "), (next: " + hex(next_offset) + "), " + output
        addDirName(string, offset/0xc, next_offset)
        
        return output


class RomFS_File(object):

    def diagnose(self, file, base_address, offset, string_table, path, filedir="", export=0, debug=False):
        output = ""
        
        flags = file.ReadByte(base_address+offset+0x0) # 0: file, 1: directory
        offset_string = ((file.ReadWord(base_address+offset+0x0))&0xffffff) + string_table
        string = file.ReadString0(base_address+offset_string, 0x20)
        file_offset = file.ReadWord(base_address+offset+0x4)
        file_length = file.ReadWord(base_address+offset+0x8)
        
        #output = "\nFile: " + hex(offset_string) + " (" + string + ") - " + hex(file_offset) + " - " + hex(file_length)
        addRomSection(path + string, file_offset, file_length, offset/0xc)
        
        #if string.endswith(".MAP") or string.endswith(".szs"):
        if export:
            file.WriteSectionInFile((filedir + path + string).replace("//", "/"), file_offset, file_length)
        
        return output


class DolFS(object):

    def diagnose(self, file, base_address, filedir="", export=0, debug=False):
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
        
        if export:
            for i in range(6):
                file.WriteSectionInFile(filedir + "code/" + "Text_" + hex(TextMem[i]) + ".bin", base_address+TextPos[i], TextSize[i])
        
            for i in range(10):
                file.WriteSectionInFile(filedir + "code/" + "Data_" + hex(DataMem[i]) + ".bin", base_address+DataPos[i], DataSize[i])
        
        TotSize = alignAdr(TotSize, 0x100)
        if export:
            file.WriteSectionInFile(filedir + "bootfile.dol", base_address, TotSize)
        addRomSection("/bootfile.dol", base_address, TotSize)
        
        return header_output

        
if __name__ == "__main__":
    conf = configuration.Config()
    dvd = GCDVD(conf)
    
    filename = ""
    outdir = ""
    outfile = ""
    output = ""
    outFileList = ""
    export = 0
    
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
        elif sys.argv[i] == "-filelist":
            outFileList = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-o":
            outfile = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-export":
            export = 1
            i += 1
    
    print(cmd + ': ' + filename)
    
    if cmd == "diagnose":
        print(cmd + ' to ' + outfile)
        output = dvd.diagnose(filename, outdir, outfile, outFileList, export)
    
    print output
