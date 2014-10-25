#!/usr/bin/python
# Name: Find overlap offsets
# Dev : Srinivasan Chandrasekharan

import sys
import numpy as np
import matplotlib
import matplotlib.pyplot as plt

def findOverlap(workload_filename):
	print workload_filename
	
	open_count = 0
	read_count = 0

	data = {}

	fp = open(workload_filename, 'r')
	for line in fp:
		tokens = line.split(" ")
		if tokens[0] == "open":	
			open_count = open_count + 1
			curr_pid = tokens[1]
			fname = tokens[2].split("/")
			fname = fname[len(fname)-1]
			fd = tokens[3].rstrip("\n")
			
			print "%s %s" % (fname, fd)
		if tokens[0] == "read":
			read_count = read_count + 1
			curr_pid = tokens[1]
			fd = tokens[2]
			offset = tokens[3]
			readbytes = tokens[4]

			#print fd, offset, readbytes, type(fd), type(offset), type(readbytes)	
			#if type(fd) == int and type(offset) == int and type(readbytes) == int:
			fd = str(fd)
			offset = str(offset)
			readbytes = str(readbytes)
			if fd in data:
				if offset in data[fd]:
					data[fd][offset] = data[fd][offset] + 1
				else:
					data[fd][offset] = 0 
			else:
				data[fd] = {}
	#print "open %d" % open_count
	#print "read %d" % read_count

	fds = []
	yess = []
	nos = []
	for each_fd in data:
		counts = {'yes':0, 'no':0}
		for each_offset in data[each_fd]:
			if data[each_fd][each_offset] > 1:
				counts['yes'] = counts['yes'] + 1
			else:
				counts['no'] = counts['no'] + 1
		total = counts['yes'] + counts['no']
		if total != 0:
			yess.append(counts['yes']*100.00/total)
			nos.append(counts['no']*100.00/total)
			fds.append(each_fd)
			print "%s %d %d" % (each_fd, counts['yes'], counts['no'])
	
	N = len(fds) 
	ind = np.arange(N)
	width = 0.8
	
	p1 = plt.bar(ind, yess, width, color='g')
	p2 = plt.bar(ind, nos, width, color='r', bottom=yess)

	plt.ylabel('Percentage Overlaps')
	plt.title('Offset overlaps by yes and no')
	plt.xticks(ind+width/2., fds, rotation='vertical')
	plt.yticks(np.arange(0,100,10))
	plt.legend( (p1[0], p2[0]), ('Yes', 'No') )
	
	fname = workload_filename.split('/')[len(workload_filename.split('/'))-1]
	filename = "overlap-percentage-%s.png" % (fname)
	plt.savefig(filename)

if __name__ == "__main__":
	if len(sys.argv) < 2:
		print "[Usage]: ./findOverlap <workload_filename>"
	else:
		findOverlap(sys.argv[1]);
