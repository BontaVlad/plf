%% . Remove all occurrence of a maximum value from a list on integer numbers

sterge(_, [], []).
sterge(E, [H|T], [H|R]):-
    E =\= H,
    !, sterge(E, T, R).
sterge(E, [_|T], R):- sterge(E, T, R).

%max of list
max_l([X],X) :- !, true.
max_l([H|T], M):- max_l(T, M), M >= H.
max_l([H|T], H):- max_l(T, M), H >  M.


del_max(L, R):-
    max_l(L, M),
    sterge(M, L, R).
