%% a. Write a predicate to determine the lowest common multiple of a list formed from integer numbers.

gcd(0, X, X):- X > 0, !.
gcd(X, Y, Z):- X >= Y, X1 is X-Y, gcd(X1, Y, Z).
gcd(X, Y, Z):- X < Y, X1 is Y-X, gcd(X1, X, Z).

lcm(X, Y, Z):-
    Z is abs(X * Y) / gcd(X, Y).

cmmmcL([], 1).
cmmmcL([H|T], M):- cmmmcL(T, M1),
                   lcm(H, M1, M).
