solve(Start, Solution):-
	bf([[Start]], Solution).

bf([[Node|Path]|_], [Node|Path]):-:-
	goal(Node).

bf([[N|Path]|Paths], Solution):-
	bagof([M,N|Path],
		(s(N,M), not member(M,[N|Path])),
		NewPaths),
	conc(Paths, NewPaths, Paths1), !,
	bf(Paths1, Solution);
	bf(Paths, Solution).

edge(1,2).
edge(1,3).
edge(2,3).
edge(2,4).
edge(3,4).

goal(3).