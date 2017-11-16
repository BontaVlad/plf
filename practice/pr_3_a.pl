%% Define a predicate to remove from a list all repetitive elements.

sterge(_, [], []).
sterge(E, [H|T], [H|T1]):-
    H =\= E,
    !, sterge(E, T, T1).
sterge(E, [_|T], T1):- sterge(E, T, T1).

dup_del([], []).
dup_del([H|T], R):- sterge(H, T, R), dup_del(T, R).
