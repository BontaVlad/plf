%% For a heterogeneous list, formed from integer numbers and list of numbers, write a predicate to sort every sublist with removing the doubles.
%% Eg.: [1, 2, [4, 1, 4], 3, 6, [7, 10, 1, 3, 9], 5, [1, 1, 1], 7] =>
%% [1, 2, [1, 4], 3, 6, [1, 3, 7, 9, 10], 5, [1], 7]


apartine(X, [X|_]).
apartine(X, [_|Rest]):- apartine(X, Rest).

elim([], []):- !.

elim([H|T], R):-
    apartine(H, T),
    elim(T, R).

elim([H|T], [H|R]):- elim(T, R).

elim_list([], []):- !.

elim_list([H|T], R):-
    is_list(H),
    elim_list(H, R),
    elim_list(T, R).

elim_list([H|T], R):-
    apartine(H, T),
    elim_list(T, R).

elim_list([H|T], [H|R]):-
    elim_list(T, R).
