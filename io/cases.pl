:- module(cases, [title/1, case/3]).
:- use_module('../prolog/semdiff').
:- use_module(engine).
title('semdiff').
prog_g(P) :- rnd_int(0, 5, N), length(P, N), maplist([S]>>rnd_pick([reverse, msort, dedupe, inc, double, evens, identity, reverse, msort], S), P).
case(semdiff, [A, B], semdiff) :- prog_g(A), ( rnd_chance(40) -> normal(A, B0), ( rnd_chance(50) -> B = [reverse, reverse|B0] ; B = B0 ) ; prog_g(B) ).
case(normal, [P], normal) :- prog_g(P).
case(run, [P, I], run) :- prog_g(P), rnd_int(0, 6, N), length(I, N), maplist([X]>>rnd_int(0, 9, X), I).
