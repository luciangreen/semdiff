% semdiff: did a change actually change what the program does? Two versions of a list program
% (pipelines of steps applied left to right) are reduced to a normal form by sound rewrite
% rules; equal normal forms mean the same behaviour. Otherwise semdiff searches for the
% smallest input where they differ, so a diff says "same", "differs on X", or "unknown".
%?- normal([reverse, reverse, msort], N).                   % N = [msort]
%?- semdiff([msort, dedupe], [dedupe], D).                  % D = same
%?- semdiff([inc, double], [double, inc], D).               % D = differs([0], [2], [1])
%?- semdiff([msort, evens], [evens, msort], D).              % D = same
:- module(semdiff, [step/3, run/3, rule/2, normal/2, semdiff/3]).
:- use_module(library(lists)).
:- use_module(library(apply)).

step(reverse, L, R) :- reverse(L, R).
step(msort, L, R) :- msort(L, R).
step(dedupe, L, R) :- sort(L, R).
step(inc, L, R) :- maplist([X, Y]>>(Y is X + 1), L, R).
step(double, L, R) :- maplist([X, Y]>>(Y is 2 * X), L, R).
step(evens, L, R) :- include([X]>>(X mod 2 =:= 0), L, R).
step(identity, L, L).

run(P, I, O) :- foldl([S, A, B]>>step(S, A, B), P, I, O0), O = O0.

% Sound rules on adjacent steps (first, then second) -> replacement.
rule([identity], []).
rule([reverse, reverse], []).
rule([reverse, msort], [msort]).
rule([reverse, dedupe], [dedupe]).
rule([msort, msort], [msort]).
rule([msort, dedupe], [dedupe]).
rule([dedupe, msort], [dedupe]).
rule([dedupe, dedupe], [dedupe]).
rule([evens, evens], [evens]).
rule([double, evens], [double]).          % every doubled number is even
% keeping the even items commutes with sorting and with reversing: a fixed order (sorts first, then evens,
% then reverse) gives such programs one normal form. These rules keep the length; evens only moves right
% past a sort and left past a reverse, so rewriting still ends.
rule([evens, msort], [msort, evens]).
rule([evens, dedupe], [dedupe, evens]).
rule([reverse, evens], [evens, reverse]).

% normal(+Program, -Normal): rewrite until no rule applies (each rule makes the program shorter, or moves
% evens past a sort or a reverse, which can happen only finitely often, so this ends).
normal(P, N) :- ( append(Pre, Rest, P), rule(L, R), append(L, Post, Rest) -> append([Pre, R, Post], P1), normal(P1, N) ; N = P ).

% semdiff(+Old, +New, -Diff): same, differs(Input, OldOut, NewOut), or unknown.
semdiff(A, B, D) :- normal(A, NA), normal(B, NB),
    (   NA == NB -> D = same
    ;   inputs(I), run(A, I, OA), run(B, I, OB), OA \== OB -> D = differs(I, OA, OB)
    ;   D = unknown ).
inputs(I) :- between(0, 4, N), length(I, N), maplist([X]>>between(0, 3, X), I).
