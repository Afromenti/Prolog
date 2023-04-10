pogoda(lublin, lato, cieple).
pogoda(lublin, zima, umiarkowana).
pogoda(kair, lato, upalne).
pogoda(kair, zima, bardzo_ciepla).
pogoda(jakutsk, lato, umiarkowane).
pogoda(jakutsk, zima, bardzo_mrozna).
plec(m).
plec(k).


lubi(jan,pawel).
lubi(tob,en).
lubi(sen,den).
lubi(len,es).
lubi(xd,dx).
lubi(xe,ze).
lubi(jan,gosia).
lubi(pawel, krzysztof).
lubi(pawel,jan).
nielubi(krzyt,log).
nielubi(log,krzyt).
love(magda,maciek).
love(maciek,magda).
love(zenek,olsza).


przyjazn(X, Y) :-
    lubi(X,Y),
    lubi(Y,X).

nibyprzyjazn(X, Y) :-
    lubi(X,Y);
    lubi(Y,X).

nieprzyjazn(X, Y) :-
     nielubi(X,Y),
     nielubi(Y,X).

loves(X,Y) :-
    love(X,Y);
    love(Y,X).

truelove(X,Y) :-
    love(X,Y),
    love(Y,X).
    

/* Queries
przyjazn(pawel, jan) 
przyjazn(jan, pawel)
nibyprzyjazn(ze, xe)
nibyprzyjazn(xe, ze)
loves(magda,maciek)
truelove(olsza,zenek)
*/
