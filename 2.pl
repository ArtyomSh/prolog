nod(M,N,R):-
    N==0,
    R is M,!;
    M > N,
	  O is M mod N,% берем остаток от деления
	  nod(N,O,R).
nod(M,N,R):-
    M==0,
    R is N,!;
    N > M,
	  O is N mod M, 
	  nod(O,M,R).
nok(M,N,R):-
	  nod(M,N,R1),
	  R is (M*N) / R1,!.% по формуле

%?- nok(2,6,R) выведет 6
%?- nok(3,2,5) выведет false
