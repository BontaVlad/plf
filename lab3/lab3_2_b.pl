%% For a heterogeneous list, formed from integer numbers and list of numbers, write a predicate to sort every sublist with removing the doubles.
%% Eg.: [1, 2, [4, 1, 4], 3, 6, [7, 10, 1, 3, 9], 5, [1, 1, 1], 7] =>
%% [1, 2, [1, 4], 3, 6, [1, 3, 7, 9, 10], 5, [1], 7]

insert(E, [], [E]):- !.

insert(E, [H|T], [H|L]):- E>H, !,
                          insert(E, T, L).

insert(E, [H|T], [H|T]):- E=:=H, !.

insert(E, L, [E|L]):- !.

sortare([], []):-!.

sortare([H|T], L):-
    is_list(H),
    sortare(H, L1).

sortare([H|T], L):- sortare(T, L1),
                    insert(H, L1, L).
