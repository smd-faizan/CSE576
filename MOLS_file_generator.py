import sys

n = int(sys.argv[1])

f_out = 'MOLS_%d.pl' % n

with open(f_out, 'w') as f:
	to_write = 'value(1..%d).\nsquare(1..k).\n' % n

	to_write += '''1{a(R,C,V,S) : value(R)}1 :- value(C), value(V), square(S).
1{a(R,C,V,S) : value(C)}1 :- value(R), value(V), square(S).
1{a(R,C,V,S) : value(V)}1 :- value(R), value(C), square(S).\n'''

	to_write += 'pair(R1,C1,V1,S1,R2,C2,V2,S2) :- a(R1,C1,V1,S1), a(R2,C2,V2,S2), S1 < S2, C1 = C2, R1 = R2.\n'

	for i in range(1,n+1):
		for j in range(1,n+1):
			to_write += '1{pair(R,C,%d,S1,R,C,%d,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.\n' % (i, j)

	to_write += '#show a/4.'

	f.write(to_write)