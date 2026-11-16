# semdiff

did a change actually change what the program does? Two versions of a list program (pipelines of steps applied left to right) are reduced to a normal form by sound rewrite rules; equal normal forms mean the same behaviour. Otherwise semdiff searches for the smallest input where they differ, so a diff says "same", "differs on X", or "unknown".

## Use

```prolog
?- use_module(prolog/semdiff).
?- normal([reverse, reverse, msort], N).                   % N = [msort]
?- semdiff([msort, dedupe], [dedupe], D).                  % D = same
?- semdiff([inc, double], [double, inc], D).               % D = differs([0], [2], [1])
```

## Proofs

`proofs/theorems.pl` proves 5 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every program of up to 3 steps; every list of length 0..3 over 0..3.

1. Every rule is sound: both sides give the same output on every input.
2. Normalising keeps the meaning: a program and its normal form agree everywhere.
3. Normalising is idempotent and never makes a program longer.
4. same means the programs agree on every input; differs gives a genuine difference.
5. semdiff is symmetric in whether the programs are the same.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
