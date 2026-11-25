% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/semdiff').

% Domain: every program of up to 3 steps; every list of length 0..3 over 0..3.
prog(P) :- between(0, 3, N), length(P, N), maplist([S]>>member(S, [reverse, msort, dedupe, inc, double, evens, identity]), P).
input(I) :- between(0, 3, N), length(I, N), maplist([X]>>between(0, 3, X), I).

% 1. Every rule is sound: both sides give the same output on every input.
theorem(rules_are_sound) :- forall(( rule(L, R), input(I) ), ( run(L, I, A), run(R, I, B), A == B )).

% 2. Normalising keeps the meaning: a program and its normal form agree everywhere.
theorem(normal_form_keeps_meaning) :- forall(( prog(P), normal(P, N), input(I) ), ( run(P, I, A), run(N, I, B), A == B )).

% 3. Normalising is idempotent and never makes a program longer.
theorem(normal_form_is_idempotent) :- forall(prog(P), ( normal(P, N), normal(N, N2), N2 == N, length(P, LP), length(N, LN), LN =< LP )).

% 4. same means the programs agree on every input; differs gives a genuine difference.
theorem(verdicts_are_true) :-
    forall(( prog(A), length(A, LA), LA =< 2, prog(B), length(B, LB), LB =< 2, semdiff(A, B, D) ),
           ( D == same -> forall(input(I), ( run(A, I, X), run(B, I, Y), X == Y ))
           ; D = differs(I, X, Y) -> run(A, I, X), run(B, I, Y), X \== Y
           ; true )).

% 5. semdiff is symmetric in whether the programs are the same.
theorem(same_is_symmetric) :- forall(( prog(A), length(A, LA), LA =< 2, prog(B), length(B, LB), LB =< 2 ), iff(semdiff(A, B, same), semdiff(B, A, same))).

% 6. Programs that differ only in where evens sits among sorts and reverses are proved the same.
theorem(commuting_steps_are_same) :- forall(( member(S, [msort, dedupe, reverse]), member(T, [[], [inc], [double]]) ),
    ( append([S, evens], T, A), append([evens, S], T, B), semdiff(A, B, same) )).
