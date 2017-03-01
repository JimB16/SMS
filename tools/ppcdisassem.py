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
import array

import configuration




def write_string_to_file(filename, string):
    if not os.path.exists(os.path.dirname(filename)):
        os.makedirs(os.path.dirname(filename))
    with open(os.path.join(filename), 'w') as out:
        out.write(string)


def SignExtendedOffset16(offset):
    if offset & 0x8000:
        return "-" + hex((offset ^ 0xffff)+1)
        #return hex(offset | 0xffff0000)
    return hex(offset)


def AbsSignExtendedOffset16(offset):
    if offset & 0x8000:
        return hex((offset ^ 0xffff)+1)
        #return hex(offset | 0xffff0000)
    return hex(offset)


LabelNames = {}
LabelType = {}

class Label():
    def __init__(self, adr, name, type):
        self.adr = adr
        self.name = name
        self.type = type

LabelAddresses = []

def addLabelAdr(adr, name, type):
    if checkLabelAdr(adr) == "":
        LabelAddresses.append(Label(adr, name, type))
        LabelNames[adr] = name
        LabelType[adr] = type
    return None

def checkLabelAdr(adr):
    if adr in LabelNames:
        return LabelNames[adr]
    return ""
    """
    for i in range(len(LabelAddresses)):
        if (LabelAddresses[i]).adr == adr:
            return (LabelAddresses[i]).name
    return ""
    """

def getLabelType(adr):
    if adr in LabelType:
        return LabelType[adr]
    return ""
    """
    for i in range(len(LabelAddresses)):
        if (LabelAddresses[i]).adr == adr:
            return (LabelAddresses[i]).type
    return ""
    """

def getNrOfLabelAddresses():
    return len(LabelNames)
    #return len(LabelAddresses)

def getNthAdr(n):
    #return (LabelNames.keys())[n]
    return (LabelAddresses[n]).adr

def getLabelOfAdr(adr, base_address):
    if adr in LabelNames:
        return LabelNames[adr]
    return hex(adr)
    """
    for i in range(len(LabelAddresses)):
        if (LabelAddresses[i]).adr == adr:
            #stradr = "%x" % adr
            return (LabelAddresses[i]).name
    return hex(adr)
    """

def getBranchLabelOfAdr(adr, base_address):
    if adr in LabelNames:
        return LabelNames[adr]
    return hex(adr)
    """
    for i in range(len(LabelAddresses)):
        if (LabelAddresses[i]).adr == adr:
            #stradr = "%x" % adr
            return (LabelAddresses[i]).name
    return hex(adr)
    """


class SSEQCmd():
    def __init__(self, offset, cmd, par):
        self.offset = offset
        self.cmd = cmd
        self.par = par

SSEQList = []

def addSSEQCmd(offset, cmd, par=0):
    SSEQList.append(SSEQCmd(offset, cmd, par))
    return None

def checkSSEQoffset(offset):
    for item in SSEQList:
        if item.offset == offset:
            return 1
    return 0
    
def getRegNames(reg):
    if reg == 1:
        return "sp"
    elif reg == 2:
        return "rtoc"
    else:
        return "r" + str(reg)
    
def getFprNames(reg):
    return "f" + str(reg)
    
def getCrNames(reg):
    return "cr" + str(reg)
    
def getCrbNames(reg):
    return str(reg)
    
cmpname = ["w", "d"]
def getCmpName(L):
    return cmpname[L]
    
b_condition = ["ge", "le", "ne", "ns", "lt", "gt", "eq", "so"]
def getBranchCondition(BI, BO):
    return b_condition[((BO & 8) >> 1) + (BI & 3)]
    
b_decr = ["nzf", "zf", "", "", "nzt", "zt", "", "", "nz",  "z",  "", "", "nz",  "z",  "", ""]
def getBranchDecrement(BO):
    return b_decr[BO >> 1]

def getBranchY(BO, bdisp):
    y = (BO & 1)
    if (bdisp < 0):
        y = (y ^ 1) & 1;
    if y != 0:
        return "+"
    else:
        return "-"

def getRc(Rc):
    if Rc == 0:
        return " "
    else:
        return "."
        
def getBC(BI, BO, bdisp, extension):
    string = ""
    if ((BO & 4) == 4): # standard case - no decrement
        if ((BO & 16) == 16): # branch always
            string += "b" + extension + "       "
            #string += getBranchLabelOfAdr(target_adr, base_address) + "\n"
        else: # Branch conditional
            string += "b" + getBranchCondition(BI, BO) + extension + getBranchY(BO, bdisp) + "    "
            if BI >= 4:
                string += "cr" + str(BI >> 2) + ", "
            #string += getBranchLabelOfAdr(target_adr, base_address) + "\n"
    else: # // CTR is decremented and checked
        string += "bd" + getBranchDecrement(BO) + extension + getBranchY(BO, bdisp) + "      "
        if ((BO & 16) == 0):
            string += hex(BI) + ", "
        #string += getBranchLabelOfAdr(target_adr, base_address) + "\n"
    return string

def writeSSEQListToFile(filename_out, filename, base_address, filesize):
    SSEQList.sort(key=operator.attrgetter('offset'))
    output_sseq = ""
    old_offset = base_address
    for item in SSEQList:
        # add .incbins in gaps
        if old_offset != item.offset:
            #.incbin "./baserom/overlay/overlay_0011.bin", 0x14c, 0x221f96c - 0x221f94c
            output_sseq += "\n.incbin \"" + filename + "\", " + hex(old_offset-base_address) + ", " + hex(item.offset) + " - " + hex(old_offset) + "\n"
            old_offset = item.offset+4
        else:
            old_offset = item.offset+4
            
        if getLabelType(item.offset) == "Function":
            output_sseq += "\n.globl " + getLabelOfAdr(item.offset, base_address) + "\n"
            output_sseq += getLabelOfAdr(item.offset, base_address) + ": /* " + hex(item.offset) + " */\n"
        elif getLabelType(item.offset) == "branch":
            output_sseq += getLabelOfAdr(item.offset, base_address) + ":\n"
        #output_sseq += hex(item.offset) + ": "
        output_sseq += "    "
        if item.cmd == "bx":
            target_adr = item.par[0]
            AA = item.par[1]
            LK = item.par[2]
            if (AA == 0) & (LK == 0):
                output_sseq += "b       " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
            elif (AA == 1) & (LK == 0):
                output_sseq += "ba      " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
            elif (AA == 0) & (LK == 1):
                output_sseq += "bl      " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
            elif (AA == 1) & (LK == 1):
                output_sseq += "bla     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
        elif item.cmd == "ps_sum0":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_sum0 f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_muls0":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_muls0 f" + str(D) + ", f" + str(A) + ", f" + str(C) + "\n"
        elif item.cmd == "ps_madds0":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_madds0 f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_madds1":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_madds1 f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge00":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge00 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge01":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge01 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge10":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge10 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_merge11":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_merge11 f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "vmhaddshs":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            output_sseq += "vmhaddshs v" + str(D) + ", v" + str(A) + ", v" + str(B) + ", v" + str(C) + "\n"
        elif item.cmd == "ps_sub":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_sub f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_add":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_add f" + str(D) + ", f" + str(A) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_mul":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            output_sseq += "ps_mul f" + str(D) + ", f" + str(A) + ", f" + str(C) + "\n"
        elif item.cmd == "ps_msub":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_msub f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_madd":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "ps_madd f" + str(D) + ", f" + str(A) + ", f" + str(C) + ", f" + str(B) + "\n"
        elif item.cmd == "ps_neg":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            output_sseq += "ps_neg  f" + str(D) + ", f" + str(B) + "\n"
        elif item.cmd == "mulli":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            output_sseq += "mulli   " + getRegNames(D) + ", " + getRegNames(A) + ", " + hex(simm) + "\n"
        elif item.cmd == "subfic":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            output_sseq += "subfic  " + getRegNames(D) + ", " + getRegNames(A) + ", " + hex(simm) + "\n"
        elif item.cmd == "cmpli":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            uimm = item.par[3]
            #output_sseq += "cmpli   " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + hex(uimm) + "\n"
            if crfD == 0:
                output_sseq += "cmpl" + getCmpName(L) + "i  " + getRegNames(A) + ", " + hex(uimm) + "\n"
            else:
                output_sseq += "cmpl" + getCmpName(L) + "i  " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + hex(uimm) + "\n"
        elif item.cmd == "cmpi":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            simm = item.par[3]
            #output_sseq += "cmpi    " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
            if crfD == 0:
                output_sseq += "cmp" + getCmpName(L) + "i   " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
            else:
                output_sseq += "cmp" + getCmpName(L) + "i   " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addic":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            output_sseq += "addic   " + getRegNames(D) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addic.":
            D = item.par[0]
            A = item.par[1]
            simm = item.par[2]
            output_sseq += "addic.  " + getRegNames(D) + ", " + getRegNames(A) + ", " + SignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addi":
            d = item.par[0]
            a = item.par[1]
            simm = item.par[2]
            if a == 0:
                output_sseq += "li      " + getRegNames(d) + ", " + SignExtendedOffset16(simm) + "\n"
            else:
                if (simm & 0x8000) == 0:
                    output_sseq += "addi    " + getRegNames(d) + ", " + getRegNames(a) + ", " + SignExtendedOffset16(simm) + "\n"
                else:
                    output_sseq += "subi    " + getRegNames(d) + ", " + getRegNames(a) + ", " + AbsSignExtendedOffset16(simm) + "\n"
        elif item.cmd == "addis":
            d = item.par[0]
            a = item.par[1]
            simm = item.par[2]
            if a == 0:
                output_sseq += "lis     " + getRegNames(d) + ", " + hex(simm) + "\n"
            else:
                output_sseq += "addis   " + getRegNames(d) + ", " + getRegNames(a) + ", " + hex(simm) + "\n"
        elif item.cmd == "bcx": #  (beq)  - beq ADDRESS is really bc 12, 10 ADDRESS
            BO = item.par[0]
            BI = item.par[1]
            target_adr = item.par[2]
            AA = item.par[3]
            LK = item.par[4]
            bdisp = item.par[5] # 0 forwards, 1 backwards
            extension = ""
            if (AA == 0) & (LK == 0):
                #if (BO == 12) & (BI == 0):
                #    output_sseq += "blt     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 12) & (BI == 2):
                #    output_sseq += "beq-    " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 13) & (BI == 2):
                #    output_sseq += "beq+    " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 16) & (BI == 0):
                #    output_sseq += "bdnz    " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 4) & (BI == 2):
                #    output_sseq += "bne     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #elif (BO == 4) & (BI == 0):
                #    output_sseq += "bge     " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                #else:
                #output_sseq += "bc      " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = ""
            elif (AA == 1) & (LK == 0):
                #output_sseq += "bca     " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = "a"
            elif (AA == 0) & (LK == 1):
                #output_sseq += "bcl     " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = "l"
            elif (AA == 1) & (LK == 1):
                #output_sseq += "bcla    " + hex(BO) + ", " + hex(BI) + ", " + getBranchLabelOfAdr(target_adr, base_address) + "\n"
                extension = "la"
            output_sseq += getBC(BI, BO, bdisp, extension)
            output_sseq += getBranchLabelOfAdr(target_adr, base_address) + "\n"
        elif item.cmd == "sc":
            output_sseq += "sc\n"
        elif item.cmd == "bclrx":
            BO = item.par[0]
            BI = item.par[1]
            LK = item.par[2]
            if ((BO & 0b10100) == 0b10100) & (BI == 0) & (LK == 0):
                output_sseq += "blr\n\n"
            elif ((BO & 0b10100) == 0b10100) & (BI == 0) & (LK == 1):
                output_sseq += "blrl\n"
            else:
                if LK == 0:
                    output_sseq += getBC(BI, BO, 0, "lr") + "\n"
                    #if (BO == 12) & (BI == 2):
                    #    output_sseq += "beqlr\n\n"
                    #else:
                    #    output_sseq += "bclr    " + str(BO) + ", " + str(BI) + "\n"
                else:
                    output_sseq += getBC(BI, BO, 0, "lrl") + "\n"
                    #output_sseq += "bclrl   " + str(BO) + ", " + str(BI) + "\n"
        elif item.cmd == "rfi":
            output_sseq += "rfi\n"
        elif item.cmd == "isync":
            output_sseq += "isync\n"
        elif item.cmd == "crxor":
            crbD = item.par[0]
            crbA = item.par[1]
            crbB = item.par[2]
            output_sseq += "crxor   " + getCrbNames(crbD) + ", " + getCrbNames(crbA) + ", " + getCrbNames(crbB) + "\n"
        elif item.cmd == "cror":
            crbD = item.par[0]
            crbA = item.par[1]
            crbB = item.par[2]
            output_sseq += "cror    " +getCrbNames(crbD) + ", " + getCrbNames(crbA) + ", " + getCrbNames(crbB) + "\n"
        elif item.cmd == "bcctrx":
            BO = item.par[0]
            BI = item.par[1]
            LK = item.par[2]
            if LK == 0:
                output_sseq += getBC(BI, BO, 0, "ctr") + "\n"
                #output_sseq += "bcctr   " + str(BO) + ", " + str(BI) + "\n"
            else:
                output_sseq += getBC(BI, BO, 0, "ctrl") + "\n"
                #output_sseq += "bcctrl  " + str(BO) + ", " + str(BI) + "\n"
        elif item.cmd == "rlwimix":
            S = item.par[0]
            A = item.par[1]
            SH = item.par[2]
            MB = item.par[3]
            ME = item.par[4]
            Rc = item.par[5]
            if ((32-MB) == SH):
                output_sseq += "inslwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(ME-MB+1) + ", " + str(MB) + "\n"
                # ME = MB+n-1 => n = ME-MB+1
            elif (-SH+32-MB) == (ME+1-MB):
                output_sseq += "insrwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(-SH+32-MB) + ", " + str(MB) + "\n"
                # insrwi: b=MB
                # SH = 32 - (MB+n) => -SH+32-MB = n
                # ME = (MB+n) - 1 => ME+1-MB = n
            else:
                output_sseq += "rlwimi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + ", " + str(MB) + ", " + str(ME) + "\n"
        elif item.cmd == "rlwinmx":
            S = item.par[0]
            A = item.par[1]
            SH = item.par[2]
            MB = item.par[3]
            ME = item.par[4]
            Rc = item.par[5]
            if (MB == 0) & (ME == 31): # rotlwi, rotrwi
                output_sseq += "rotlwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + "\n"
            elif (SH == 0) & (MB == 0):
                output_sseq += "clrrwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(-(ME-31)) + "\n" # ME = 31 - n => n = -(ME-31)
            elif (SH == 0) & (ME == 31):
                output_sseq += "clrlwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(MB) + "\n"
            elif (ME == (31-SH)) & (MB == 0):
                output_sseq += "slwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + "\n"
            elif ((32-MB) == SH) & (ME == 31):
                output_sseq += "srwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(MB) + "\n"
            elif (SH == (-ME+31)) & (SH <= (MB+SH)) & (MB+SH < 32):
                n = SH
                b = MB+SH
                output_sseq += "clrlslwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(b) + ", " + str(n) + "\n"
                # clrlslwi
                # n = SH
                # MB = b-SH => b = MB+SH
                # ME = 31-SH => SH = -ME+31
            elif MB == 0:
                output_sseq += "extlwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(ME+1) + ", " + str(SH) + "\n"
            elif ME == 31:
                # MB = 32-n => n = -MB+32
                # SH = b+n => b = SH-n
                n = -MB+32
                b = SH-n
                output_sseq += "extrwi" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(n) + ", " + str(b) + "\n"
            else:
                output_sseq += "rlwinm" + getRc(Rc) + " " + getRegNames(A) + ", " + getRegNames(S) + ", " + str(SH) + ", " + str(MB) + ", " + str(ME) + "\n"
        elif item.cmd == "ori":
            s = item.par[0]
            a = item.par[1]
            uimm = item.par[2]
            output_sseq += "ori     " + getRegNames(a) + ", " + getRegNames(s) + ", " + hex(uimm) + "\n"
        elif item.cmd == "oris":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "oris    " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "xori":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "xori     " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "xoris":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "xoris    " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "andi.":
            S = item.par[0]
            A = item.par[1]
            uimm = item.par[2]
            output_sseq += "andi.   " + getRegNames(A) + ", " + getRegNames(S) + ", " + hex(uimm) + "\n"
        elif item.cmd == "cmp":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            B = item.par[3]
            #output_sseq += "cmp     " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            if crfD == 0:
                output_sseq += "cmp" + getCmpName(L) + "    " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "cmp" + getCmpName(L) + "    " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "subfcx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subfc   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subfc.  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfco  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfco. r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "addcx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "addc    r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "addc.   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addco   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addco.  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "mulhwux":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "mulhwu  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            else:
                output_sseq += "mulhwu. r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "mfcr":
            D = item.par
            output_sseq += "mfcr    r" + str(D) + "\n"
        elif item.cmd == "lwzx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lwzx    r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "slwx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "slw     r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
            else:
                output_sseq += "slw.    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
        elif item.cmd == "cntlzwx":
            S = item.par[0]
            A = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "cntlzw  r" + str(A) + ", r" + str(S) + "\n"
            else:
                output_sseq += "cntlzw. r" + str(A) + ", r" + str(S) + "\n"
        elif item.cmd == "andx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "and     r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
            else:
                output_sseq += "and.    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
        elif item.cmd == "cmpl":
            crfD = item.par[0]
            L = item.par[1]
            A = item.par[2]
            B = item.par[3]
            #output_sseq += "cmpl    " + getCrNames(crfD) + ", " + str(L) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            if crfD == 0:
                output_sseq += "cmpl" + getCmpName(L) + "   " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "cmpl" + getCmpName(L) + "   " + getCrNames(crfD) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "subfx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subf    r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subf.   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfo   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfo.  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "dcbst":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbst   r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "andcx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "andc    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
            else:
                output_sseq += "andc.   r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
        elif item.cmd == "mulhwx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "mulhw   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            else:
                output_sseq += "mulhw.  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "mfmsr":
            D = item.par
            output_sseq += "mfmsr   r" + str(D) + "\n"
        elif item.cmd == "dcbf":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbf    r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "lbzx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lbzx    r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "neg":
            D = item.par[0]
            A = item.par[1]
            OE = item.par[2]
            Rc = item.par[3]
            if (OE == 0) & (Rc == 0):
                output_sseq += "neg     r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "neg.    r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "nego    r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "nego.   r" + str(D) + ", r" + str(A) + "\n"
        elif item.cmd == "norx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                if S == B:
                    output_sseq += "not     r" + str(A) + ", r" + str(S) + "\n"
                else:
                    output_sseq += "nor     r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
            else:
                if S == B:
                    output_sseq += "not.    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
                else:
                    output_sseq += "nor.    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
        elif item.cmd == "subfe":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subfe   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subfe.  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfeo  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfeo. r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "addex":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "adde    r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "adde.   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addeo   r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addeo.  r" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "mtcrf":
            S = item.par[0]
            CRM = item.par[1]
            output_sseq += "mtcrf   " + str(CRM) + ", r" + str(S) + "\n"
        elif item.cmd == "mtmsr":
            S = item.par
            output_sseq += "mtmsr   r" + str(S) + "\n"
        elif item.cmd == "stwx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "stwx    r" + str(S) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "subfzex":
            D = item.par[0]
            A = item.par[1]
            OE = item.par[2]
            Rc = item.par[3]
            if (OE == 0) & (Rc == 0):
                output_sseq += "subfze  r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "subfze. r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "subfzeo r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "subfzeo. r" + str(D) + ", r" + str(A) + "\n"
        elif item.cmd == "addzex":
            D = item.par[0]
            A = item.par[1]
            OE = item.par[2]
            Rc = item.par[3]
            if (OE == 0) & (Rc == 0):
                output_sseq += "addze   r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "addze.  r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addzeo  r" + str(D) + ", r" + str(A) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addzeo. r" + str(D) + ", r" + str(A) + "\n"
        elif item.cmd == "stbx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "stbx    " + getRegNames(S) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mullwx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "mullw   " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "mullw.  " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "mullwo  " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "mullwo. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "addx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "add     " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "add.    " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "addo    " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "addo.   " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "lhzx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lhzx    " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "eqvx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "eqv     " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "eqv.    " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "xorx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if (Rc == 0):
                output_sseq += "xor     " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
            else:
                output_sseq += "xor.    " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mfspr":
            D = item.par[0]
            spr = item.par[1]
            spr2 = item.par[2]
            if spr == 1:
                output_sseq += "mfxer   " + getRegNames(D) + "\n"
            elif spr == 8:
                output_sseq += "mflr    " + getRegNames(D) + "\n"
            elif spr == 9:
                output_sseq += "mfctr   " + getRegNames(D) + "\n"
            else:
                output_sseq += "mfspr   " + getRegNames(D) + ", " + str(spr | (spr2<<5)) + "\n"
        elif item.cmd == "lhax":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lhax    " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mftb":
            D = item.par[0]
            tbr = item.par[1]
            tbr2 = item.par[2]
            output_sseq += "mftb    " + getRegNames(D) + ", " + str(tbr | (tbr2<<5)) + "\n"
        elif item.cmd == "sthx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "sthx    " + getRegNames(S) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "or":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if S == B:
                if Rc == 0:
                    output_sseq += "mr      " + getRegNames(A) + ", " + getRegNames(S) + "\n"
                else:
                    output_sseq += "mr.     " + getRegNames(A) + ", " + getRegNames(S) + "\n"
            else:
                if Rc == 0:
                    output_sseq += "or      " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
                else:
                    output_sseq += "or.     " + getRegNames(A) + ", " + getRegNames(S) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "divwux":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "divwu   " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "divwu.  " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "divwuo  " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "divwuo. " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "mtspr":
            S = item.par[0]
            spr = item.par[1]
            spr2 = item.par[2]
            if spr == 1:
                output_sseq += "mtxer   " + getRegNames(S) + "\n"
            elif spr == 8:
                output_sseq += "mtlr    " + getRegNames(S) + "\n"
            elif spr == 9:
                output_sseq += "mtctr   " + getRegNames(S) + "\n"
            else:
                output_sseq += "mtspr   " + str(spr | (spr2<<5)) + ", " + getRegNames(S) + "\n"
        elif item.cmd == "dcbi":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbi    " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "divwx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            OE = item.par[3]
            Rc = item.par[4]
            if (OE == 0) & (Rc == 0):
                output_sseq += "divw    " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 0) & (Rc == 1):
                output_sseq += "divw.   " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 0):
                output_sseq += "divwo   " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
            elif (OE == 1) & (Rc == 1):
                output_sseq += "divwo.  " + getRegNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "lfsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lfsx    " + getFprNames(D) + ", " + getRegNames(A) + ", " + getRegNames(B) + "\n"
        elif item.cmd == "srwx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "srw     r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
            else:
                output_sseq += "srw.    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
        elif item.cmd == "lfdx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "lfdx    fr" + str(D) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "sync":
            output_sseq += "sync\n"
        elif item.cmd == "stfsx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "stfsx   " + getFprNames(S) + ", r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "srawx":
            S = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "sraw    r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
            else:
                output_sseq += "sraw.   r" + str(A) + ", r" + str(S) + ", r" + str(B) + "\n"
        elif item.cmd == "srawix":
            S = item.par[0]
            A = item.par[1]
            SH = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "srawi   r" + str(A) + ", r" + str(S) + ", " + str(SH) + "\n"
            else:
                output_sseq += "srawi.  r" + str(A) + ", r" + str(S) + ", " + str(SH) + "\n"
        elif item.cmd == "extshx":
            S = item.par[0]
            A = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "extsh   r" + str(A) + ", r" + str(S) + "\n"
            else:
                output_sseq += "extsh.  r" + str(A) + ", r" + str(S) + "\n"
        elif item.cmd == "extsbx":
            S = item.par[0]
            A = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "extsb   r" + str(A) + ", r" + str(S) + "\n"
            else:
                output_sseq += "extsb.  r" + str(A) + ", r" + str(S) + "\n"
        elif item.cmd == "icbi":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "icbi    r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "dcbz":
            A = item.par[0]
            B = item.par[1]
            output_sseq += "dcbz    r" + str(A) + ", r" + str(B) + "\n"
        elif item.cmd == "lwz":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lwz     " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lwzu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lwzu    " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lbz":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lbz     " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lbzu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lbzu    " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stw":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stw     " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stwu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stwu    " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stb":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stb     " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stbu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stbu    " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lhz":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lhz     " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lhzu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lhzu    " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lha":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lha     " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "sth":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "sth     " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "sthu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "sthu    " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lmw":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lmw     " + getRegNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stmw":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stmw    " + getRegNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lfs":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lfs     " + getFprNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lfsu":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lfsu    " + getFprNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "lfd":
            D = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "lfd     " + getFprNames(D) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stfs":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stfs    " + getFprNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stfsu":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stfsu   " + getFprNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "stfd":
            S = item.par[0]
            A = item.par[1]
            d = item.par[2]
            output_sseq += "stfd    " + getFprNames(S) + ", " + SignExtendedOffset16(d) + "(" + getRegNames(A) + ")\n"
        elif item.cmd == "psq_l":
            D = item.par[0]
            A = item.par[1]
            W = item.par[2]
            I = item.par[3]
            d = item.par[4]
            output_sseq += "psq_l   " + getFprNames(D) + ", " + str(d) + " (" + str(A) + "), " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "fdivs":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fdivs   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fdivs.  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fsubs":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fsubs   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fsubs.  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "faddsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fadds   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fadds.  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fresx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "fres    " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fres.   " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmuls":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fmuls   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
            else:
                output_sseq += "fmuls.  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
        elif item.cmd == "fmsubsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            if Rc == 0:
                output_sseq += "fmsubs  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fmsubs. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmaddsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            if Rc == 0:
                output_sseq += "fmadds  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fmadds. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fnmsubsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            if Rc == 0:
                output_sseq += "fnmsubs " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fnmsubs. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fnmaddsx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            if Rc == 0:
                output_sseq += "fnmadds " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fnmadds. " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "xsmaddasp":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "xsmaddasp vs" + str(D) + ", vs" + str(A) + ", vs" + str(B) + "\n"
        elif item.cmd == "psq_st":
            S = item.par[0]
            A = item.par[1]
            W = item.par[2]
            I = item.par[3]
            d = item.par[4]
            output_sseq += "psq_st " + getFprNames(S) + ", " + str(d) + " (" + str(A) + "), " + str(W) + ", " + str(I) + "\n"
        elif item.cmd == "fcmpu":
            crfD = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "fcmpu   " + getCrNames(crfD) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "frspx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "frsp    " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "frsp.   " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fctiwzx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "fctiwz  " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fctiwz. " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fdivx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fdiv    " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fdiv.   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fsubx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            Rc = item.par[3]
            output_sseq += "fsub" + getRc(Rc) + "   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fselx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            output_sseq += "fsel" + getRc(Rc) + "   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmulx":
            D = item.par[0]
            A = item.par[1]
            C = item.par[2]
            Rc = item.par[3]
            if Rc == 0:
                output_sseq += "fmul    " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
            else:
                output_sseq += "fmul.   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + "\n"
        elif item.cmd == "frsqrtex":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "frsqrte " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "frsqrte. " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fnmsubx":
            D = item.par[0]
            A = item.par[1]
            B = item.par[2]
            C = item.par[3]
            Rc = item.par[4]
            if Rc == 0:
                output_sseq += "fnmsub   " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fnmsub.  " + getFprNames(D) + ", " + getFprNames(A) + ", " + getFprNames(C) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fcmpo":
            crfD = item.par[0]
            A = item.par[1]
            B = item.par[2]
            output_sseq += "fcmpo   " + getCrNames(crfD) + ", " + getFprNames(A) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "mtfsb1":
            crbD = item.par[0]
            Rc = item.par[1]
            if Rc == 0:
                output_sseq += "mtfsb1  " + str(crbD) + "\n"
            else:
                output_sseq += "mtfsb1. " + str(crbD) + "\n"
        elif item.cmd == "fnegx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "fneg    " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fneg.   " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fmrx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "fmr     " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fmr.    " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        elif item.cmd == "fabsx":
            D = item.par[0]
            B = item.par[1]
            Rc = item.par[2]
            if Rc == 0:
                output_sseq += "fabs    " + getFprNames(D) + ", " + getFprNames(B) + "\n"
            else:
                output_sseq += "fabs.   " + getFprNames(D) + ", " + getFprNames(B) + "\n"
        else:
            output_sseq += item.cmd + " " + str(item.par) + "\n"
    
    if old_offset < (base_address+filesize):
        #.incbin "./baserom.bin", 0x14c, 0x221f96c - 0x221f94c
        output_sseq += "\n.incbin \"" + filename + "\", " + hex(old_offset-base_address) + ", " + hex(base_address+filesize) + " - " + hex(old_offset) + "\n"
    
    write_string_to_file(filename_out, output_sseq)



class Disassembler(object):
    rom = []
    filenamepath = ""
    filesize = 0
    base_address = 0

    def __init__(self, config):
        self.config = config

    def initialize(self, filename, base):
        rom_path = os.path.join(self.config.path, filename)
        self.filenamepath = filename
        self.rom = bytearray(open(rom_path, "rb").read())
        self.filesize = os.path.getsize(filename)
        self.base_address = base

    def is_adr_in_range(self, addr):
        if (addr >= self.base_address) & (addr < (self.base_address+self.filesize)):
            return 1
        else:
            return 0

    def get_word_from_rom(self, adr):
        addr = adr - self.base_address
        return (self.rom[addr] << 24) | (self.rom[addr+1] << 16) | (self.rom[addr+2] << 8) | (self.rom[addr+3] << 0)

    def get_hword_from_rom(self, adr):
        addr = adr - self.base_address
        return (self.rom[addr] << 8) | (self.rom[addr+1] << 0)

    def get_byte_from_rom(self, adr):
        addr = adr - self.base_address
        return self.rom[addr]

    def write_section_in_file(self, addr, size):
        if size == 0: return None
        filename = 'data/data_' + "{:08x}".format(addr) + '.bin'
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            newFileBytes.append(self.rom[offset])
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        return None

    def write_section_in_file_wfilename(self, addr, size, filename):
        #if size == 0: return None
        if not os.path.exists(os.path.dirname(filename)):
            os.makedirs(os.path.dirname(filename))
        f = open(filename, 'wb')
        newFileBytes = []
        offset = addr
        end_address = addr+size
        
        while offset < end_address:
            newFileBytes.append(self.rom[offset])
            offset += 1
        
        fByteArray = bytearray(newFileBytes)
        f.write(fByteArray)
        f.close()
        return None
        

    def unpack_sseq_file(self, filename, base_address, start_address, outfilename, debug=False):
        output = ""
        output_sseq = "test123"
        
        folder = filename.replace(".bin", "_bin")
        
        addLabelAdr(start_address, "Function_" + hex(start_address), "Function")
        """
        addLabelAdr(0x80003100, "Function_" + hex(0x80003100), "Function")
        addLabelAdr(0x800031f4, "Function_" + hex(0x800031f4), "Function")
        addLabelAdr(0x80003244, "Function_" + hex(0x80003244), "Function")
        addLabelAdr(0x80003268, "Function_" + hex(0x80003268), "Function")
        addLabelAdr(0x800051cc, "Function_" + hex(0x800051cc), "Function")
        addLabelAdr(0x800051ec, "Function_" + hex(0x800051ec), "Function")
        """

        FunctionLength = 0x2000
        offsetn = 0
        while offsetn < getNrOfLabelAddresses():
            offset = getNthAdr(offsetn)
            i = 0
            cmd = 0
            ending = 0
            while (checkSSEQoffset(offset+i) == 0) & self.is_adr_in_range(offset+i) & (i < FunctionLength) & (ending == 0):
                word = self.get_word_from_rom(offset+i)
                if (word >> 26) == 18: # bx
                    LI = (word & 0x3fffffc)
                    AA = (word >> 1) & 0x1
                    LK = (word >> 0) & 0x1
                    if ((LI >> 25) & 0x1) == 1:
                        LI = (0x4000000 - LI) * -1
                    else:
                        LI = LI
                    if AA == 0:
                        target_adr = LI + offset + i
                    else:
                        target_adr = LI
                    if self.is_adr_in_range(target_adr):
                        if LK == 0:
                            addLabelAdr(target_adr, "branch_" + hex(target_adr), "branch")
                        else:
                            addLabelAdr(target_adr, "Function_" + hex(target_adr), "Function")
                    #else:
                    addSSEQCmd(offset+i, "bx", (target_adr, AA, LK))
                    if LK == 0:
                        ending = 1
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 10): # ps_sum0
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_sum0", (D, A, B, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 12): # ps_muls0
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_muls0", (D, A, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 14): # ps_madds0
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_madds0", (D, A, B, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 15): # ps_madds1
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_madds1", (D, A, B, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 528): # ps_merge00
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_merge00", (D, A, B, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 560): # ps_merge01
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_merge01", (D, A, B, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 592): # ps_merge10
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_merge10", (D, A, B, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 624): # ps_merge11
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_merge11", (D, A, B, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 16): # vmhaddshs
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    addSSEQCmd(offset+i, "vmhaddshs", (D, A, B, C))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 20): # ps_sub
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_sub", (D, A, B, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 21): # ps_add
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_add", (D, A, B, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 25): # ps_mul
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_mul", (D, A, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 28): # ps_msub
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_msub", (D, A, B, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x1f) == 29): # ps_madd
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_madd", (D, A, B, C, Rc))
                elif ((word >> 26) == 4) & (((word >> 1) & 0x3ff) == 40): # ps_neg
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "ps_neg", (D, B, Rc))
                elif (word >> 26) == 7: # mulli
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    simm = (word & 0xffff)
                    addSSEQCmd(offset+i, "mulli", (D, A, simm))
                elif (word >> 26) == 8: # subfic
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    simm = (word & 0xffff)
                    addSSEQCmd(offset+i, "subfic", (D, A, simm))
                elif (word >> 26) == 10: # cmpli (cmplwi)
                    crfD = (word >> 23) & 0x7
                    L = (word >> 21) & 0x1
                    A = (word >> 16) & 0x1f
                    uimm = (word & 0xffff)
                    addSSEQCmd(offset+i, "cmpli", (crfD, L, A, uimm))
                elif (word >> 26) == 11: # cmpi (cmpwi)
                    crfD = (word >> 23) & 0x7
                    L = (word >> 21) & 0x1
                    A = (word >> 16) & 0x1f
                    simm = (word & 0xffff)
                    addSSEQCmd(offset+i, "cmpi", (crfD, L, A, simm))
                elif (word >> 26) == 12: # addic
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    simm = (word & 0xffff)
                    addSSEQCmd(offset+i, "addic", (D, A, simm))
                elif (word >> 26) == 13: # addic.
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    simm = (word & 0xffff)
                    addSSEQCmd(offset+i, "addic.", (D, A, simm))
                elif (word >> 26) == 14: # addi (li)
                    d = (word >> 21) & 0x1f
                    a = (word >> 16) & 0x1f
                    imm = (word & 0xffff)
                    addSSEQCmd(offset+i, "addi", (d, a, imm))
                elif (word >> 26) == 15: # addis (lis)
                    d = (word >> 21) & 0x1f
                    a = (word >> 16) & 0x1f
                    simm = (word & 0xffff)
                    addSSEQCmd(offset+i, "addis", (d, a, simm))
                elif (word >> 26) == 16: # bcx (beq)  - beq ADDRESS is really bc 12, 10 ADDRESS
                    # 01000 00110 10001 0 false
                    # 01000 00110 00001 0 right
                    BO = (word >> 21) & 0x1f
                    BI = (word >> 16) & 0x1f
                    BD = (word & 0xfffc)
                    if (BD & 0x8000): # todo in a more general way (function)
                        BD = BD | 0xffff0000
                        BD = -0x100000000 + BD
                    bdisp = BD
                    AA = (word >> 1) & 0x1
                    LK = (word >> 0) & 0x1
                    if AA == 0:
                        target_adr = BD + offset + i
                    else:
                        target_adr = BD
                    if self.is_adr_in_range(target_adr):
                        addLabelAdr(target_adr, "branch_" + hex(target_adr), "branch")
                    addSSEQCmd(offset+i, "bcx", (BO, BI, target_adr, AA, LK, bdisp))
                elif ((word >> 26) == 17) & (((word >> 1) & 0x1) == 1): # sc
                    d = 0
                    addSSEQCmd(offset+i, "sc", d)
                elif ((word >> 26) == 19) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 16): # bclrx (blr)
                    BO = (word >> 21) & 0x1f
                    BI = (word >> 16) & 0x1f
                    LK = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "bclrx", (BO, BI, LK))
                    if ((BO & 0b10100) == 0b10100) & (BI == 0) & (LK == 0):
                        ending = 1
                elif ((word >> 26) == 19) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 50): # rfi
                    S = 0
                    addSSEQCmd(offset+i, "rfi", S)
                elif ((word >> 26) == 19) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 150): # isync
                    S = 0
                    addSSEQCmd(offset+i, "isync", S)
                elif ((word >> 26) == 19) & (((word >> 1) & 0x3ff) == 193): # crxor
                    crbD = (word >> 21) & 0x1f
                    crbA = (word >> 16) & 0x1f
                    crbB = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "crxor", (crbD, crbA, crbB))
                elif ((word >> 26) == 19) & (((word >> 1) & 0x3ff) == 449): # cror
                    crbD = (word >> 21) & 0x1f
                    crbA = (word >> 16) & 0x1f
                    crbB = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "cror", (crbD, crbA, crbB))
                elif ((word >> 26) == 19) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 528): # bcctrx
                    BO = (word >> 21) & 0x1f
                    BI = (word >> 16) & 0x1f
                    LK = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "bcctrx", (BO, BI, LK))
                elif (word >> 26) == 20: # rlwimix
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    SH = (word >> 11) & 0x1f
                    MB = (word >> 6) & 0x1f
                    ME = (word >> 1) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "rlwimix", (S, A, SH, MB, ME, Rc))
                elif (word >> 26) == 21: # rlwinmx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    SH = (word >> 11) & 0x1f
                    MB = (word >> 6) & 0x1f
                    ME = (word >> 1) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "rlwinmx", (S, A, SH, MB, ME, Rc))
                elif (word >> 26) == 24: # ori
                    s = (word >> 21) & 0x1f
                    a = (word >> 16) & 0x1f
                    uimm = (word & 0xffff)
                    addSSEQCmd(offset+i, "ori", (s, a, uimm))
                elif (word >> 26) == 25: # oris
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    uimm = (word & 0xffff)
                    addSSEQCmd(offset+i, "oris", (S, A, uimm))
                elif (word >> 26) == 26: # xori
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    uimm = (word & 0xffff)
                    addSSEQCmd(offset+i, "xori", (S, A, uimm))
                elif (word >> 26) == 27: # xoris
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    uimm = (word & 0xffff)
                    addSSEQCmd(offset+i, "xoris", (S, A, uimm))
                elif (word >> 26) == 28: # andi.
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    uimm = (word & 0xffff)
                    addSSEQCmd(offset+i, "andi.", (S, A, uimm))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 0): # cmp
                    crfD = (word >> 23) & 0x7
                    L = (word >> 21) & 0x1
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "cmp", (crfD, L, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 8): # subfcx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "subfcx", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 10): # addcx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "addcx", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 11): # mulhwux
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "mulhwux", (D, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 19): # mfcr
                    D = (word >> 21) & 0x1f
                    addSSEQCmd(offset+i, "mfcr", D)
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 23): # lwzx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "lwzx", (D, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 24): # slwx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "slwx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 26): # cntlzwx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "cntlzwx", (S, A, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 28): # andx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "andx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 32) & (((word >> 0) & 0x1) == 0): # cmpl
                    crfD = (word >> 23) & 0x7
                    L = (word >> 21) & 0x1
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "cmpl", (crfD, L, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 40): # subfx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "subfx", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 54) & (((word >> 0) & 0x1) == 0): # dcbst
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "dcbst", (A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 60): # andcx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "andcx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 75): # mulhwx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "mulhwx", (D, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 16) & 0x1f) == 0) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 83) & (((word >> 0) & 0x1) == 0): # mfmsr
                    D = (word >> 21) & 0x1f
                    addSSEQCmd(offset+i, "mfmsr", D)
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 86): # dcbf
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "dcbf", (A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 87): # lbzx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "lbzx", (D, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 104): # neg
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "neg", (D, A, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 124): # norx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "norx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 136): # subfe
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "subfe", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 138): # addex
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "addex", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 144): # mtcrf
                    S = (word >> 21) & 0x1f
                    CRM = (word >> 12) & 0xff
                    addSSEQCmd(offset+i, "mtcrf", (S, CRM))
                elif ((word >> 26) == 31) & (((word >> 16) & 0x1f) == 0) & (((word >> 11) & 0x1f) == 0) & (((word >> 1) & 0x3ff) == 146) & (((word >> 0) & 0x1) == 0): # mtmsr
                    S = (word >> 21) & 0x1f
                    addSSEQCmd(offset+i, "mtmsr", S)
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 151): # stwx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "stwx", (S, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 200): # subfzex
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "subfzex", (D, A, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 202): # addzex
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "addzex", (D, A, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 215): # stbx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "stbx", (S, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 235): # mullwx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "mullwx", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 266): # addx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "addx", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 279): # lhzx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "lhzx", (D, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 284): # eqvx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "eqvx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 316): # xorx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "xorx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 339) & (((word >> 0) & 0x1) == 0): # mfspr
                    D = (word >> 21) & 0x1f
                    spr = (word >> 16) & 0x1f
                    spr2 = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "mfspr", (D, spr, spr2))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 343): # lhax
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "lhax", (D, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 371): # mftb (mftbl)
                    D = (word >> 21) & 0x1f
                    tbr = (word >> 16) & 0x1f
                    tbr2 = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "mftb", (D, tbr, tbr2))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 407): # sthx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "sthx", (S, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 444): # or (mr)
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "or", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 459): # divwux
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "divwux", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 467) & (((word >> 0) & 0x1) == 0): # mtspr (mtlr)
                    S = (word >> 21) & 0x1f
                    spr = (word >> 16) & 0x1f
                    spr2 = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "mtspr", (S, spr, spr2))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 470): # dcbi
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "dcbi", (A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x1ff) == 491): # divwx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    OE = (word >> 10) & 0x1
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "divwx", (D, A, B, OE, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 535): # lfsx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "lfsx", (D, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 536): # srwx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "srwx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 599): # lfdx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "lfdx", (D, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 598) & (((word >> 0) & 0x1) == 0): # sync
                    S = 0
                    addSSEQCmd(offset+i, "sync", S)
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 663): # stfsx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "stfsx", (S, A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 792): # srawx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "srawx", (S, A, B, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 824): # srawix
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    SH = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "srawix", (S, A, SH, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 922): # extshx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "extshx", (S, A, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 954): # extsbx
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "extsbx", (S, A, Rc))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 982) & (((word >> 0) & 0x1) == 0): # icbi
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "icbi", (A, B))
                elif ((word >> 26) == 31) & (((word >> 1) & 0x3ff) == 1014) & (((word >> 0) & 0x1) == 0): # dcbz
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "dcbz", (A, B))
                elif (word >> 26) == 32: # lwz
                    D = (word >> 21) & 0x1f
                    a = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lwz", (D, a, d))
                elif (word >> 26) == 33: # lwzu
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lwzu", (D, A, d))
                elif (word >> 26) == 34: # lbz
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lbz", (D, A, d))
                elif (word >> 26) == 35: # lbzu
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lbzu", (D, A, d))
                elif (word >> 26) == 36: # stw
                    s = (word >> 21) & 0x1f
                    a = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stw", (s, a, d))
                elif (word >> 26) == 37: # stwu
                    s = (word >> 21) & 0x1f
                    a = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stwu", (s, a, d))
                elif (word >> 26) == 38: # stb
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stb", (S, A, d))
                elif (word >> 26) == 39: # stbu
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stbu", (S, A, d))
                elif (word >> 26) == 40: # lhz
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lhz", (D, A, d))
                elif (word >> 26) == 41: # lhzu
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lhzu", (D, A, d))
                elif (word >> 26) == 42: # lha
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lha", (D, A, d))
                elif (word >> 26) == 44: # sth
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "sth", (S, A, d))
                elif (word >> 26) == 45: # sthu
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "sthu", (S, A, d))
                elif (word >> 26) == 46: # lmw
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lmw", (D, A, d))
                elif (word >> 26) == 47: # stmw
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stmw", (S, A, d))
                elif (word >> 26) == 48: # lfs
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lfs", (D, A, d))
                elif (word >> 26) == 49: # lfsu
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lfsu", (D, A, d))
                elif (word >> 26) == 50: # lfd
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "lfd", (D, A, d))
                elif (word >> 26) == 52: # stfs
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stfs", (S, A, d))
                elif (word >> 26) == 53: # stfsu
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stfsu", (S, A, d))
                elif (word >> 26) == 54: # stfd
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    d = (word & 0xffff)
                    addSSEQCmd(offset+i, "stfd", (S, A, d))
                elif (word >> 26) == 56: # psq_l
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    W = (word >> 15) & 0x1
                    I = (word >> 12) & 0x7
                    d = (word & 0xfff)
                    addSSEQCmd(offset+i, "psq_l", (D, A, W, I, d))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 18): # fdivs
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fdivs", (D, A, B, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 20): # fsubs
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fsubs", (D, A, B, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 21): # fadds
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "faddsx", (D, A, B, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 24): # fresx
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fresx", (D, B, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 25): # fmuls
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fmuls", (D, A, C, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 28): # fmsubsx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fmsubsx", (D, A, B, C, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 29): # fmaddsx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fmaddsx", (D, A, B, C, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 30): # fnmsubsx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fnmsubsx", (D, A, B, C, Rc))
                elif ((word >> 26) == 59) & (((word >> 1) & 0x1f) == 31): # fnmaddsx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fnmaddsx", (D, A, B, C, Rc))
                elif ((word >> 26) == 60): # psq_st
                    S = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    W = (word >> 15) & 0x1
                    I = (word >> 12) & 0x7
                    d = (word >> 0) & 0xfff
                    addSSEQCmd(offset+i, "psq_st", (S, A, W, I, d))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 0): # fcmpu
                    crfD = (word >> 23) & 0x7
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "fcmpu", (crfD, A, B))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 12): # frspx
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "frspx", (D, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 15): # fctiwzx
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fctiwzx", (D, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 18): # fdivx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fdivx", (D, A, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 20): # fsubx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fsubx", (D, A, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x1f) == 23): # fselx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fselx", (D, A, B, C, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x1f) == 25): # fmulx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fmulx", (D, A, C, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x1f) == 26): # frsqrtex
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "frsqrtex", (D, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x1f) == 30): # fnmsubx
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    C = (word >> 6) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fnmsubx", (D, A, B, C, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 32): # fcmpo
                    crfD = (word >> 23) & 0x7
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "fcmpo", (crfD, A, B))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 38): # mtfsb1
                    crbD = (word >> 21) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "mtfsb1", (crbD, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 40): # fnegx
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fnegx", (D, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 72): # fmrx
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fmrx", (D, B, Rc))
                elif ((word >> 26) == 63) & (((word >> 1) & 0x3ff) == 264): # fabsx
                    D = (word >> 21) & 0x1f
                    B = (word >> 11) & 0x1f
                    Rc = (word >> 0) & 0x1
                    addSSEQCmd(offset+i, "fabsx", (D, B, Rc))
                else:
                    raise NameError('Unknown Cmd: ' + hex(word) + " " + hex(word >> 26) + ' at ' + hex(offset+i) + ' (' + hex(offset+i-base_address) + ")")
                """
                elif ((word >> 26) == 60) & (((word >> 1) & 0x3ff) == 4): # xsmaddasp
                    D = (word >> 21) & 0x1f
                    A = (word >> 16) & 0x1f
                    B = (word >> 11) & 0x1f
                    addSSEQCmd(offset+i, "xsmaddasp", (D, A, B))
                """
                i += 4
                if i == FunctionLength:
                    print "reached end (" + hex(offset) + ")"
            offsetn += 1
        
        #output_sseq += "i: " + str(i) + "\n"
        #output_sseq += "offset: " + str(offset+i) + "\n"
        
        filename_out = filename.replace(".bin", ".bin.txt")
        write_string_to_file(filename_out, output_sseq)
        writeSSEQListToFile(outfilename, self.filenamepath, base_address, self.filesize)

        return (output)


if __name__ == "__main__":
    conf = configuration.Config()
    dis = Disassembler(conf)
    
    cmd = ""
    filename = ""
    filename_sseq = ""
    outfilename = ""
    path = ""
    debugFlag = False
    filelist = []
    filelist_on = 0
    base_address = 0
    start_address = 0
    filename_labels = ""
    filename_starts = ""
    
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "-x":
            filelist_on = 0
            cmd = "unpack"
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-p":
            cmd = "pack"
            path = sys.argv[i+1]
            filelist_on = 1
            i += 2
        elif sys.argv[i] == "-p2":
            cmd = "pack"
            filelist_on = 1
            i += 1
        elif sys.argv[i] == "-o":
            filelist_on = 0
            outfilename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-sseq":
            cmd = "sseq"
            filelist_on = 0
            filename_sseq = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-ppc":
            cmd = "ppc"
            filelist_on = 0
            filename = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-base":
            base_address = sys.argv[i+1]
            base_address = int(base_address, 16)
            i += 2
        elif sys.argv[i] == "-start":
            start_address = sys.argv[i+1]
            start_address = int(start_address, 16)
            i += 2
        elif sys.argv[i] == "-labels":
            filename_labels = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-starts":
            filename_starts = sys.argv[i+1]
            i += 2
        elif sys.argv[i] == "-debug":
            filelist_on = 0
            debugFlag = True
            i += 2
        else:
            if filelist_on == 1:
                filelist += [sys.argv[i]]
            i += 1

    if filename_labels != "":
        with open(filename_labels) as f:
            content = f.readlines()
        for line in content:
            line = line.strip('\n\r')
            l = line.split(" ")
            if((len(l) == 2) or (len(l) == 3)):
                addLabelAdr(int(l[0], 16), l[1], "Function") # adr, name
    
    if filename_starts != "":
        with open(filename_starts) as f:
            content = f.readlines()
        for line in content:
            #if line.find(" ") != -1:
            #    adr = int(line.split(" ")[0], 16)
            adr = int(line, 16)
            addLabelAdr(adr, "Function_" + hex(adr), "Function")
    
    print(cmd + ': ' + filename)
    filelist.sort()
    #print("filelist: " + str(filelist))
    if cmd == "ppc":
        dis.initialize(filename, base_address)
        output = dis.unpack_sseq_file(filename, base_address, start_address, outfilename, debug=debugFlag)
    print output
