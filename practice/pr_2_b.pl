%% b. Define a predicate to produce a list of pairs (atom n) from an initial list of atoms. In this initial list atom has n occurrences.

sterge(_,[],[]).
sterge(E, [H|T], [H|T1]):-
    H =\= E,
    !, sterge(E, T, T1).
sterge(E, [_|T], T1):- sterge(E, T, T1).

nr_apar(_, [], 0).
nr_apar(E, [E|H], N):-
    nr_apar(E, H, N1),
    N is N1 + 1, !.
nr_apar(E, [_|H], N):- nr_apar(E, H, N).

get_perechi([], []).
get_perechi([E], [[E, 1]]).
get_perechi([H|T], [[H, N]|P]):-
    nr_apar(H, [H|T], N),
    sterge(H, [H|T], L),
    get_perechi(L, P).
