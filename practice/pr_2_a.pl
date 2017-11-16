%% a. Write a predicate to remove all occurrences of a certain atom from a list. 
%% remove_atom(list, atom, r) :: (in, in, out)

remove_atom([], _, []).
remove_atom([H|T], A, [H|R]):- H =\= A, remove_atom(T, A, R).
remove_atom([H|T], A, R):- H =:= A, remove_atom(T, A, R).
