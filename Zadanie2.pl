rodzic(stefan, krzys).
mezczyzna(stefan).
osoba(marcin).

kobieta(X) :- 
    \+ mezczyzna(X).

ojciec(X, Y) :- 
    mezczyzna(X), 
    rodzic(X, Y).

matka(X, Y) :- 
    kobieta(X),
    rodzic(X, Y).

corka(X, Y) :- 
    kobieta(X), 
    rodzic(Y, X).

brat_rodzony(X, Y) :- 
    mezczyzna(X),
    rodzic(Z, X), 
    rodzic(Z, Y),
    X \= Y.

brat_przyrodni(X, Y) :- 
    mezczyzna(X), 
    rodzic(Z, X), 
    rodzic(Z, Y), 
    rodzic(W, X), 
    rodzic(V, Y), 
    Z \= W, 
    X \= Y.


kuzyn(X, Y) :- 
    rodzic(Z, X),
    rodzic(W, Y), 
    X \= Y.

dziadek_od_strony_ojca(X, Y) :-
    mezczyzna(X), 
    rodzic(X, Z), 
    rodzic(Z, Y).


dziadek_od_strony_matki(X, Y) :-
    mezczyzna(X), 
    rodzic(X, Z), 
    rodzic(Z, Y), 
    kobieta(Z).

dziadek(X, Y) :- 
    dziadek_od_strony_ojca(X, Y) ; 
    dziadek_od_strony_matki(X, Y).

babcia(X, Y) :- 
    kobieta(X), 
    rodzic(X, Z), 
    rodzic(Z, Y).


wnuczka(X, Y) :- 
    kobieta(Y), 
    rodzic(X, Z), 
    rodzic(Z, Y).

przodek_do2pokolenia_wstecz(X, Y) :- 
    rodzic(X, Z), 
    rodzic(Z, Y).

przodek_do3pokolenia_wstecz(X, Y) :- 
    rodzic(X, Z), 
    przodek_do2pokolenia_wstecz(Z, Y).




/* Queries
kobieta(stefan)
ojciec(stefan,krzys)
matka(stefan,krzys)
*/



