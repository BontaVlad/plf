%% b. Write a predicate to add a value v after 1-st, 2-nd, 4-th, 8-th, … element in a list.

add(L1, V, L2):- fancy(L1, V, 1, 1, L2).


fancy([], _, _, _, []):- !.

fancy([H|T1], V, P, C, [V|[H|T2]]):-
    C1 is C * 2,
    P1 is P + 1,
    P1 =:= C1,
    writeln(C1),
    fancy(T1, V, P1, C1, T2).

fancy([H|T1], V, P, C, [H|T2]):-
    P1 is P + 1,
    fancy(T1, V, P1, C, T2).
