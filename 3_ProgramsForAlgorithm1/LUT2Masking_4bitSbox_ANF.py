

from sympy.logic.boolalg import ANFform
from sympy.abc import a,b,c,d,e,f,g,h
import itertools
import re


def lut2anf(lut):
    anfstr = str(ANFform([d,c,b,a], lut))
    #anfstr = str(ANFform([a,b,c,d,e,f,g,h], lut))
    return anfstr

def comb(nums, bits):
        result = []
        for i in itertools.combinations(nums,bits):
            result.append(list(i))
        return result



Sbox = [0xB, 0xF, 0x3, 0x2, 0xA, 0xC, 0x9, 0x1, 0x6, 0x7, 0x8, 0x0, 0xE, 0x5, 0xD, 0x4]   # PRINCE Sbox
# Sbox = [0xC, 0x5, 0x6, 0xB, 0x9, 0x0, 0xA, 0xD, 0x3, 0xE, 0xF, 0x8, 0x4, 0x7, 0x1, 0x2]   # PRESENT Sbox
# Sbox = [0xC, 0x6, 0x9, 0x0, 0x1, 0xA, 0x2, 0xB, 0x3, 0x8, 0x5, 0xD, 0x4, 0xE, 0x7, 0xF]   # SKINNY Sbox
# Sbox = [0x0, 0x4, 0x8, 0xf, 0x1, 0x5, 0xe, 0x9, 0x2, 0x7, 0xa, 0xc, 0xb, 0xd, 0x6, 0x3  ]  #PROST Sbox
# Sbox = [0x6, 0x5, 0xc, 0xa, 0x1, 0xe, 0x7, 0x9, 0xb, 0x0, 0x3, 0xd, 0x8, 0xf, 0x4, 0x2  ]  #RECTANGLE Sbox
# Sbox = [0x0, 0x8, 0x6, 0xD, 0x5, 0xF, 0x7, 0xC, 0x4, 0xE, 0x2, 0x3, 0x9, 0x1, 0xB, 0xA  ]  #Class-13 Sbox
# Sbox = [0x0, 0x1, 0x3, 0x2, 0xE, 0xD, 0x8, 0xA, 0xF, 0x6, 0x7, 0xC, 0x4, 0x9, 0x5, 0xB  ]  #GF16 Sbox

Topmodule = "PRINCESbox_ANF"

inputlist = ["a","b","c","d"]
inputlist_part = ["b","c","d"]
inputlist_part_last = ["b","c","d"]
inputlist_part2rand = ["r0m","r1m","r2m"]
inputlist_part2rand_last = ["r0m","r1m","r2m"]
outputlist = ["x","y","z","t"]


replaced_list = []



outlixt=[]
anfallstr=[]
for i in range(0,4):
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
for bitindex in range(0,4):
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

                        tmpstr += inputlist_part2rand_last[rand_index2]
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




    tmplaststr[bitindex] += "r"+str(randindex)+"m"
    randindex = randindex + 1




for i in range(0,4):
    tmpcompressstr[i] += "reg_0_"+str(len(regstr))+ ";"   # generate the compression layer
    tmpstr = tmplaststr[i] + ";"
    regstr.append(tmpstr)

for i in range(0,len(regstr)):
    regstr[i] = "reg_0_"+str(i)+ " <= " +  regstr[i]



for i in range(0,4):
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





for i in range(0,4):
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

file.write("module " + str(Topmodule) +"_PINI(\ninput clk,\ninput [3:0] a0b0c0d0,\ninput [3:0] a1b1c1d1,\ninput [" +str(randindex-1)+":0] ran,\noutput [3:0] x0y0z0t0,\noutput [3:0] x1y1z1t1\n);\n\n\n")

file.write("wire a0,b0,c0,d0;\n")
file.write("wire a1,b1,c1,d1;\n")
file.write("wire ")
for i in range(0,randindex):
    file.write("r"+str(i)+"m")
    if i != randindex-1:
        file.write(", ")
file.write(";\n\n")


file.write("assign {d0,c0,b0,a0} = a0b0c0d0;\n")
file.write("assign {d1,c1,b1,a1} = a1b1c1d1;\n")

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
file.write("\n\n")
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
file.write("assign x0y0z0t0 = {t0,z0,y0,x0};\n")
file.write("assign x1y1z1t1 = {t1,z1,y1,x1};\n")

###############################the end indicator####################################################
file.write("\n\n\n")

file.write("endmodule\n\n")

file.close()


#################################process the replaced_list###########################################
replaced_list_dis = []

##########################qu chong fu################################################################

replaced_list = replaced_list_x + replaced_list_y

for i in range(0, len(replaced_list)):
    item = replaced_list[i]
    if len(item) >= 1 and item not in replaced_list_dis:
        replaced_list_dis.append(item)



############################replace the list and verilog file#########################################

linenum = 0
#for common_index in range(0,len(replaced_list_dis)):
for common_index in range(0,len(replaced_list_dis)):
    oldstr = replaced_list_dis[common_index]
    newstr = "cdxi"+str(common_index)+"m"

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

        file.writelines(a)
        linenum = linenum + 1
    file.close()



############################add the commom item to the verilog file#######################################
file = open(filename,"a")
for common_index in range(0,len(replaced_list_dis)):
    file.write("wire cdxi"+str(common_index)+"m = " + replaced_list_dis[common_index] + ";\n")









