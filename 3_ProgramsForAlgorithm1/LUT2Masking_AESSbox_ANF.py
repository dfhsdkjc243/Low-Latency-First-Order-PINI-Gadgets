

from sympy.logic.boolalg import ANFform
from sympy.abc import a,b,c,d,e,f,g,h
import itertools
import re


def lut2anf(lut):
    anfstr = str(ANFform([h,g,f,e,d,c,b,a], lut))
    #anfstr = str(ANFform([a,b,c,d,e,f,g,h], lut))
    return anfstr

def comb(nums, bits):
        result = []
        for i in itertools.combinations(nums,bits):
            result.append(list(i))
        return result



# AES Sbox
Sbox = [0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5, 0x30, 0x01, 0x67, 0x2B, 0xFE, 0xD7, 0xAB, 0x76,
		0xCA, 0x82, 0xC9, 0x7D, 0xFA, 0x59, 0x47, 0xF0, 0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0,
		0xB7, 0xFD, 0x93, 0x26, 0x36, 0x3F, 0xF7, 0xCC, 0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15,
		0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A, 0x07, 0x12, 0x80, 0xE2, 0xEB, 0x27, 0xB2, 0x75,
		0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0, 0x52, 0x3B, 0xD6, 0xB3, 0x29, 0xE3, 0x2F, 0x84,
		0x53, 0xD1, 0x00, 0xED, 0x20, 0xFC, 0xB1, 0x5B, 0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58, 0xCF,
		0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85, 0x45, 0xF9, 0x02, 0x7F, 0x50, 0x3C, 0x9F, 0xA8,
		0x51, 0xA3, 0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5, 0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2,
		0xCD, 0x0C, 0x13, 0xEC, 0x5F, 0x97, 0x44, 0x17, 0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73,
		0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88, 0x46, 0xEE, 0xB8, 0x14, 0xDE, 0x5E, 0x0B, 0xDB,
		0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C, 0xC2, 0xD3, 0xAC, 0x62, 0x91, 0x95, 0xE4, 0x79,
		0xE7, 0xC8, 0x37, 0x6D, 0x8D, 0xD5, 0x4E, 0xA9, 0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A, 0xAE, 0x08,
		0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6, 0xE8, 0xDD, 0x74, 0x1F, 0x4B, 0xBD, 0x8B, 0x8A,
		0x70, 0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E, 0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E,
		0xE1, 0xF8, 0x98, 0x11, 0x69, 0xD9, 0x8E, 0x94, 0x9B, 0x1E, 0x87, 0xE9, 0xCE, 0x55, 0x28, 0xDF,
		0x8C, 0xA1, 0x89, 0x0D, 0xBF, 0xE6, 0x42, 0x68, 0x41, 0x99, 0x2D, 0x0F, 0xB0, 0x54, 0xBB, 0x16]


print(hex(Sbox[0x10]))




Topmodule = "AESSbox_ANF"

inputlist = ["a","b","c","d","e","f","g","h"]
inputlist_part = ["b","c","d","e","f","g","h"]
inputlist_part_last = ["b","c","d","e","f","g","h"]
inputlist_part2rand = ["r0m","r1m","r2m","r3m","r4m","r5m","r6m"]
inputlist_part2rand_last = ["r0m","r1m","r2m","r3m","r4m","r5m","r6m"]
outputlist = ["x","y","z","t","m","n","p","q"]


replaced_list = []



outlixt=[]
anfallstr=[]
for i in range(0,8):
    outlixt.append([])
    for j in range(0,len(Sbox)):
        tmpvalue = (Sbox[j]>>i)&1
        outlixt[i].append(tmpvalue)

    anfstr = lut2anf(outlixt[i])
    anfallstr.append(anfstr)
    print(anfstr)
regindex=0
randindex=0
regstr=[]
result=comb(inputlist,1)
for index in range(0,len(result)):
    regstr.append(str(result[index][0])+"0;")


result=comb(inputlist_part,1)
for index in range(0,len(result)):
    regstr.append("("+str(result[index][0])+"1 ^ r"+str(randindex)+"m);")
    replaced_list.append("("+str(result[index][0])+"1 ^ r"+str(randindex)+"m)")  #add to the replaced list
    randindex = randindex+1


regindex = regindex +len(result)




for combwidth in range(2,len(inputlist_part)):
    result=comb(inputlist_part,combwidth)
    regindex += len(result)
    for i in range(0,len(result)):  # for each item from result
        tmpstr = ""
        tmpelement=""
        tmprep = ""
        for j in range(0,len(result[i])):  # for each sub_item from item
            tmpstr += str(result[i][j])+ "1"
            tmprep += str(result[i][j])+ "1"
            tmpelement += str(result[i][j])
            if(j!= len(result[i])-1 ):
                tmpstr += "&"
                tmprep += "&"
                tmpelement += "&"
        tmpstr += " ^ r"+str(randindex)+"m;"
        tmprep += " ^ r"+str(randindex)+"m"                                  
        inputlist_part_last.append(tmpelement)
        inputlist_part2rand_last.append("r"+str(randindex)+"m")
        regstr.append(tmpstr)
        randindex = randindex + 1
        replaced_list.append(tmprep)



tmprep1 = []

tmprep2 = []


tmpcomrep1 = []
tmpcomrep2 = []
tmpcomrep3 = []
tmpcomrep4 = []

tmplist=[]


tmplaststr=[]
tmpcompressstr=[]       # generate the compression layer
for bitindex in range(0,8):
    tmplaststr.append("")
    tmpcompressstr.append("")   # generate the compression layer
    anfallstr[bitindex] = anfallstr[bitindex].replace("True","1'b1")
    if "1'b1" in anfallstr[bitindex]:  #constant monomial
        tmplaststr[bitindex] += "1&1"
        tmplaststr[bitindex] += " ^ "
    result = comb(inputlist,1)
    for i in range(0,len(result)):

        if ((result[i][0]+" ^") in anfallstr[bitindex]) or ("^ " + (result[i][0]) in anfallstr[bitindex]) :  #linear monomial
            tmplaststr[bitindex] += result[i][0]+"0"
            tmplaststr[bitindex] += " ^ "
    if tmplaststr[bitindex][-2] =="^":
        tmpstr = tmplaststr[bitindex][0:len(tmplaststr[bitindex])-3]

    replaced_list.append(tmpstr)           #add to the replaced list



    for combwidth in range(2,len(inputlist)):   #quadratic, cubic, etc. monomial
        result=comb(inputlist,combwidth)
        for i in range(0,len(result)):
            monstr="("
            for j in range(0,len(result[i])):
                monstr += result[i][j]
                if j != len(result[i])-1:
                    monstr += " & "
            monstr +=")"
            if monstr in anfallstr[bitindex] :


                tmpstr_head = result[i][0]+"0&"
                tmpstr = "("
                index_dom0 = inputlist.index(result[i][0])  # generate the compression layer


                tmpcomrep1.clear()
                tmpcomrep2.clear()
                tmpcomrep3.clear()
                tmpcomrep4.clear()

                tmpcompressstr_head = "reg_0_"+str(index_dom0)+"&" # generate the compression layer
                tmpcomstr = "(" # generate the compression layer

                sub_list = result[i]
                sub_list.pop(0)

                tmprep0 = ""
                monstr_type1 = ""                 
                for sub_index in range(0,len(sub_list)):
                    tmpstr += sub_list[sub_index]+"0"
                    tmprep0 += sub_list[sub_index]+"0"
                    monstr_type1 += sub_list[sub_index]                                   
                    
                    if sub_index != len(sub_list)-1:
                        tmpstr += "&"
                        tmprep0 += "&"
                        monstr_type1 += "&"                   
                        
                tmpstr += " ^ "
                tmprep0 += " ^ "
                rand_index1 = inputlist_part_last.index(monstr_type1)
                tmpstr += inputlist_part2rand_last[rand_index1]
                tmprep0 += inputlist_part2rand_last[rand_index1]
                
                
                tmpstr += " ^ "                
                tmprep1.clear()

                tmprep2.clear()

                
                for sub_combwidth in range(1,len(sub_list)+1):
                    sub_result = comb(sub_list,sub_combwidth)
                    for sub_i in range(0,len(sub_result)):
                        
                        monstr_type2 = ""
                        tmplist.clear()
                        tmprep1_str=""
                        tmprep2_str=""

                        tmpcomrep2_str=""

                        for sub_j in range(0,len(sub_list)):
                            
                            if sub_list[sub_j] in sub_result[sub_i]:
                                
                                monstr_type2 += sub_list[sub_j]
                                monstr_type2 += "&"

                                rand_index2 = inputlist_part_last.index(sub_list[sub_j])
                                tmplist.append(rand_index2)

                            else:
                                
                                tmpstr += sub_list[sub_j]+"0&"
                                tmprep1_str += sub_list[sub_j]+"0&"
                                index_dom0 = inputlist.index(sub_list[sub_j])  # generate the compression layer
                                tmpcomstr += "reg_0_"+str(index_dom0)+"&" # generate the compression layer
                                tmpcomrep2_str += "reg_0_"+str(index_dom0)+"&" # generate the compression layer
                        if len(tmprep1_str) >1 and  tmprep1_str[-1] == '&':
                            tmprep1.append(tmprep1_str[0:len(tmprep1_str)-1])
                        
                        monstr_type2 =monstr_type2[0:len(monstr_type2)-1]


                        rand_index2 = inputlist_part_last.index(monstr_type2)
                        if rand_index2 != rand_index1:
                            tmpstr += inputlist_part2rand_last[rand_index2]
                        else :
                            tmpstr = tmpstr[:-3]
                        tmprep2_str = ""
                        if len(tmprep1_str) >1 and tmprep1_str[-1] != '&':
                            tmprep2_str = tmprep1_str + "&" + inputlist_part2rand_last[rand_index2]
                            tmprep2.append(tmprep2_str)
                        elif len(tmprep1_str) >1 and tmprep1_str[-1] == '&':
                            tmprep2_str = tmprep1_str  + inputlist_part2rand_last[rand_index2]
                            tmprep2.append(tmprep2_str)

                        tmpcomstr += "("
                        tmpcomrep1_str = "("
                       
                        tmpcomstr += "reg_0_"+str(len(inputlist)+rand_index2)   # generate the compression layer
                        tmpcomrep1_str += "reg_0_"+str(len(inputlist)+rand_index2)   # generate the compression layer
                        tmpcomstr += ")"
                        tmpcomrep1_str += ")"
                        tmpcomrep1.append(tmpcomrep1_str)

                        tmpcomrep2_str = tmpcomrep2_str + tmpcomrep1_str
                        tmpcomrep2.append(tmpcomrep2_str)





                        if not ((sub_combwidth == len(sub_list)) and (sub_i == len(sub_result)-1)):
                            tmpstr += " ^ "
                            tmpcomstr += " ^ "

                tmpstr += ")"
                tmprep3 = tmpstr

                tmpstr = tmpstr_head + tmprep3 + " ^ "
                tmprep4 = tmpstr_head + tmprep3

                tmpcomstr += ")"   # generate the compression layer
                tmpcomrep3.append(tmpcomstr)

                tmpcomstr = tmpcompressstr_head + tmpcomstr
                tmpcomrep4.append(tmpcomstr)

                tmpcompressstr[bitindex] += tmpcomstr   # generate the compression layer
                tmpcompressstr[bitindex] += " ^ "   # generate the compression layer

                tmplaststr[bitindex] += tmpstr


                replaced_list.append(tmprep0)
                replaced_list += tmprep1
                replaced_list += tmprep2
                replaced_list.append(tmprep3)
                replaced_list.append(tmprep4)

                replaced_list += tmpcomrep1
                replaced_list += tmpcomrep2
                replaced_list += tmpcomrep3
                replaced_list += tmpcomrep4



    print(str(bitindex))
    print(len(replaced_list))
    tmplaststr[bitindex] += "r"+str(randindex)+"m"
    randindex = randindex + 1


print(replaced_list[len(replaced_list)-1])

for i in range(0,8):
    tmpcompressstr[i] += "reg_0_"+str(len(regstr))+ ";"   # generate the compression layer
    tmpstr = tmplaststr[i] + ";"
    regstr.append(tmpstr)

for i in range(0,len(regstr)):
    regstr[i] = "reg_0_"+str(i)+ " <= " +  regstr[i]
    #print(regstr[i])


for i in range(0,8):
    tmpcompressstr[i] = "assign "+str(outputlist[i])+ "0 = " +  tmpcompressstr[i]

x = regstr
compress_x = tmpcompressstr






#############################construct the other output share z1 for z=a^0*a^1*...*a^(n-1)######################################

y=[]
compress_y_tmp=[]
compress_y=[]

for i in range(0,len(x)):
    tmpstr = ""
    j=0
    while(j<=len(x[i])-1):       # replace {a,b,c,d,e,f,g,h}_0 -> {a,b,c,d,e,f,g,h}_1 and {a,b,c,d,e,f,g,h}_1 -> {a,b,c,d,e,f,g,h}_0
        if x[i][j:j+1] in inputlist:
            if x[i][j+1:j+2] == "0":
                tmpstr += x[i][j:j+1]+"1"
                j=j+2
            elif x[i][j+1:j+2] == "1":
                tmpstr += x[i][j:j+1]+"0"
                j=j+2
            else:
                tmpstr += str(x[i][j:j+1])
                j=j+1
        else:
            tmpstr += str(x[i][j:j+1])
            j=j+1
    tmpstr = tmpstr.replace("reg_0_","reg_1_")
    tmpstr = tmpstr.replace("1&1","0&0")
    y.append(tmpstr)





for i in range(0,8):
    compress_y_tmp.append(compress_x[i].replace("0 =","1 ="))
    compress_y.append(compress_y_tmp[i].replace("reg_0_","reg_1_"))


###########################construct the replaced list for y #############################################################

replaced_list_x = replaced_list
replaced_list_y = []

for i in range(0,len(replaced_list)):
    tmpstr = ""
    j=0
    while(j<=len(replaced_list[i])-1):       # replace {a,b,c,d,e,f,g,h}_0 -> {a,b,c,d,e,f,g,h}_1 and {a,b,c,d,e,f,g,h}_1 -> {a,b,c,d,e,f,g,h}_0
        if replaced_list[i][j:j+1] in inputlist:
            if replaced_list[i][j+1:j+2] == "0":
                tmpstr += replaced_list[i][j:j+1]+"1"
                j=j+2
            elif replaced_list[i][j+1:j+2] == "1":
                tmpstr += replaced_list[i][j:j+1]+"0"
                j=j+2
            else:
                tmpstr += str(replaced_list[i][j:j+1])
                j=j+1
        else:
            tmpstr += str(replaced_list[i][j:j+1])
            j=j+1
    tmpstr = tmpstr.replace("reg_0_","reg_1_")
    tmpstr = tmpstr.replace("1&1","0&0")
    replaced_list_y.append(tmpstr)





#############################the overcost of AES S-box####################################################################

regnum = "the total number of register is "+ str(len(x)+len(y))+" ."
randomnessnum = "the total number of randomness is " + str(randindex) + " ."


print(regnum)
print(randomnessnum)

############################output the component functions of x and y########################################################
filename = str(Topmodule) + "_PINI.v"
file = open(filename,"w")

###############################the start indicator####################################################

file.write("module " + str(Topmodule) +"_PINI(\ninput clk,\ninput [7:0] a0b0c0d0e0f0g0h0,\ninput [7:0] a1b1c1d1e1f1g1h1,\ninput [133:0] ran,\noutput [7:0] x0y0z0t0m0n0p0q0,\noutput [7:0] x1y1z1t1m1n1p1q1\n);\n\n\n")

file.write("wire a0,b0,c0,d0,e0,f0,g0,h0;\n")
file.write("wire a1,b1,c1,d1,e1,f1,g1,h1;\n")
file.write("wire ")
for i in range(0,randindex):
    file.write("r"+str(i)+"m")
    if i != randindex-1:
        file.write(", ")
file.write(";\n\n")


file.write("assign {h0,g0,f0,e0,d0,c0,b0,a0} = a0b0c0d0e0f0g0h0;\n")
file.write("assign {h1,g1,f1,e1,d1,c1,b1,a1} = a1b1c1d1e1f1g1h1;\n")

file.write("assign {")
for i in range(0,randindex):
    file.write("r"+str(i)+"m")
    if i != randindex-1:
        file.write(", ")
file.write("} = ran;\n\n")

file.write("reg ")
for i in range(0,len(x)):
    file.write("reg_0_"+str(i))
    if i != len(x)-1:
        file.write(", ")
file.write(";\n")

file.write("reg ")
for i in range(0,len(y)):
    file.write("reg_1_"+str(i))
    if i != len(y)-1:
        file.write(", ")
file.write(";\n\n")



###############################the reg values####################################################

file.write("always @(posedge clk) begin\n")
for i in range(0,len(x)):
    file.write("\t"+ str(x[i]) + "\n")

file.write("\n\n\n\n\n")
for i in range(0,len(y)):
    file.write("\t"+ str(y[i]) + "\n")

file.write("end\n\n")


###############################the compression layer####################################################

for i in range(0,len(compress_x)):
    file.write(str(compress_x[i]) + "\n")

file.write("\n\n\n")


for i in range(0,len(compress_y)):
    file.write(str(compress_y[i]) + "\n")

file.write("\n\n\n")
file.write("assign x0y0z0t0m0n0p0q0 = {q0,p0,n0,m0,t0,z0,y0,x0};\n")
file.write("assign x1y1z1t1m1n1p1q1 = {q1,p1,n1,m1,t1,z1,y1,x1};\n")

###############################the end indicator####################################################
file.write("\n\n\n")

file.write("endmodule\n\n")

file.close()

input()

#################################process the replaced_list###########################################
replaced_list_dis = []



##########################qu chong fu################################################################

replaced_list = replaced_list_x + replaced_list_y

for i in range(0, len(replaced_list)):
    item = replaced_list[i]
    if len(item) >= 1 and item not in replaced_list_dis:
        replaced_list_dis.append(item)

print(len(replaced_list))
print(len(replaced_list_dis))





############################replace the list and verilog file#########################################


linenum = 0
#for common_index in range(0,len(replaced_list_dis)):
for common_index in range(0,len(replaced_list_dis)):
    oldstr = replaced_list_dis[common_index]
    newstr = "cdxi"+str(common_index)+"m"
    print(common_index)
    print(oldstr)
    print(newstr)
    for j in range(common_index+1, len(replaced_list_dis)):
        replaced_list_dis[j] = replaced_list_dis[j].replace(oldstr,newstr)   #replace the list
    file = open(filename,"r")  #replace the verilog file
    alllines = file.readlines()
    file.close()
    file = open(filename,"w+")
    linenum = 0
    for eachline in alllines:
        if linenum <= 22:
            a = eachline
        else:
            a = eachline.replace(oldstr,newstr)
        #if oldstr in eachline:
            #print(eachline)
            #print(a)
        file.writelines(a)
        linenum = linenum + 1
    file.close()



############################add the commom item to the verilog file#######################################
file = open(filename,"a")
for common_index in range(0,len(replaced_list_dis)):
    file.write("wire cdxi"+str(common_index)+"m = " + replaced_list_dis[common_index] + ";\n")



