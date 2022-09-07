solve(Node, Solution):-
	df([], Node, Solution).
%df(Path, Node, Solution).
df(Path, Node, [Node|Path]):-
	goal(Node).
df(Path, Node, Sol):-
	edge(Node, Node1),
	not(member(Node1, Path)),
	df([Node|Path], Node1, Sol).

edge(0,3).
edge(0,1).
edge(0,2).
edge(1,2).
edge(2,4).

goal(2).