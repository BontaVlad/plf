%% a. Sort a list with keeping double values in resulted list. E.g.: [4 2 6 2 3 4] --> [2 2 3 4 4 6]

insert(E, [], [E]):- !.
insert(E, [H|T], [H|L]):- E>=H, !,
                          insert(E, T, L).
insert(E, [H|T], [E|[H|T]]):- !.

sortare([], []):-!.
sortare([H|T], L):- sortare(T, L1),
                    insert(H, L1, L).
