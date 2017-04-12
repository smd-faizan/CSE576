value(1..3).
square(1..k).
1{a(R,C,V,S) : value(R)}1 :- value(C), value(V), square(S).
1{a(R,C,V,S) : value(C)}1 :- value(R), value(V), square(S).
1{a(R,C,V,S) : value(V)}1 :- value(R), value(C), square(S).
pair(R1,C1,V1,S1,R2,C2,V2,S2) :- a(R1,C1,V1,S1), a(R2,C2,V2,S2), S1 < S2, C1 = C2, R1 = R2.
1{pair(R,C,1,S1,R,C,1,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,1,S1,R,C,2,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,1,S1,R,C,3,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,2,S1,R,C,1,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,2,S1,R,C,2,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,2,S1,R,C,3,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,3,S1,R,C,1,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,3,S1,R,C,2,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
1{pair(R,C,3,S1,R,C,3,S2) : value(R),value(C)}1 :-  square(S1), square(S2), S1 < S2.
#show a/4.