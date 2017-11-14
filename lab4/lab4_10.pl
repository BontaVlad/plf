%% For a list a1... an with integer and distinct numbers, define a predicate to determine all subsets with sum of elements divisible with n.

%% domains
%%         list=integer*
%%         clist=list*
%% predicates
%%         sum(list,integer)
%%         check(clist,clist,integer)
%%         gensub(list,list)
%%         getsub(list,clist,integer)
%% clauses
%%         %gets all possible subsets with gensub and findall, binds them to
%%         %and then checks the subsets to see if the elements add up to S
%%         %and adds the correct ones to Rez.

%Goal example: getsub([1,2,5,6],X,7)

getsub([], [], _).
getsub(L, Rez, N):-
        findall(LR, gensub(L,LR), X),
        check(X, Rez, N).

%generates all possible subsets of the given set
gensub([], []).
gensub([E|Tail], [E|NTail]):-
        gensub(Tail, NTail).
gensub([_|Tail], NTail):-
        gensub(Tail, NTail).

sum(L, N):-
    sum(L, N, 0).
sum([], N, R):- R mod N =:= 0.
sum([H|T], N, R):-
        R1 is R+H,
        sum(T, N, R1).

check([], [], _).
check([H|T], [H|LR], N):-
    sum(H, N),
    !, check(T, LR, N).
check([_|T], LR, N):-
    check(T, LR, N).

