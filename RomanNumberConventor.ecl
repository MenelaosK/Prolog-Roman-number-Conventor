value([i,v],4).
value([i,x],9).
value([x,l],40).
value([x,c],90).
value([c,d],400).
value([c,m],900).


value([i],1).
value([v],5).
value([x],10).
value([l],50).
value([c],100).
value([d],500).
value([m],1000).



roman([],0).

roman([H1,H2|T],Value):-
	value([H1,H2],V1),!,
	roman(T,V2),
	Value is V1+V2.
	
roman([H1|T],Value):-
	value([H1],V1),!,
	roman(T,V2),
	Value is V1+V2.
	