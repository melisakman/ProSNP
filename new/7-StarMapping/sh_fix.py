import sys

InputFile = sys.argv[1] 

OutputFile = sys.argv[2] # name for output file

file1 = open(InputFile, "r")
file2 = open(OutputFile, 'w')

for line in file1:
	split = line.split(" ")
	name1 = split[6].split("/")[5]
	name2 = split[7].split("/")[5]


	file2.write("gzip " + name1[:-3] + "\n")
	file2.write("gzip " + name2[:-3] + "\n")
	file2.write(line)	

