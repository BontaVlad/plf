%% a. Write a predicate to determine the difference of two sets.

append([],X,X).
append([X|Y],Z,[X|W]) :- append(Y,Z,W).

sterge(_, [], []).
sterge(E, [H|T], [H|T1]):-
    H =\= E,
    !, sterge(E, T, T1).
sterge(E, [_|T], T1):- sterge(E, T, T1).

dup_del([], []).
dup_del([H|T], R):-
    sterge(H, T, R),
    dup_del(T, R).

union(L1, L2, O):-
    append(L1, L2, R),
    dup_del(R, O).
