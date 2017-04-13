import sys

n = int(sys.argv[1])

f_out = 'data_%d.pl' % n

with open(f_out, 'w') as f:
	to_write = ""
	
	for i in range(1,n+1):
		to_write += 'a(1,%d,%d,1).\n' % (i,i)
		
	
	#for i in range(1,n+1):
	#	k=i
	#	for j in range(1,n+1):
	#		if(k==n):
	#			to_write += 'a(%d,%d,%d,1).\n' % (i, j, k)
	#		else:
	#			to_write += 'a(%d,%d,%d,1).\n' % (i, j, k%n)
	#		k = k+1

	f.write(to_write)