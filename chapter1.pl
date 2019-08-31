% 1. Whoever works hard at logic does well. Accordingly, if Russell works
% hard at logic, he does well.

works_hard(russell).

does_well(X) :-
  works_hard(X).


% 4. Anyone who is well prepared for the exam, even if she doesn't get an A
% grade, will at least get a B. Jane is well prepared, so she will get at least
% a B grade.

well_prepared(jane).

at_least_b(X) :-
  well_prepared(X).


% 5. John is taller than Mary; and Jane is shorter than Mary. So John is taller
% than Jane.

taller(john, mary).
shorter(jane, mary).

is_taller(X, Y) :-
  taller(X, N),
  shorter(Y, N).

is_taller(X, Y) :-
  taller(X, Y).

is_taller(X, Y) :-
  shorter(Y, X).


% 8. Jeckyll isn't the same person as Hyde. The reason is that no murderers are
% sane - but Hyde is a murderer, and Jekyll is certainly sane.

sane(jekyll).
sane(holmes).
murderer(hyde).

is_sane(X) :-
  \+ murderer(X).

is_sane(X) :-
  sane(X).

must_be_diff(X, Y) :-
  is_sane(X),
  \+ is_sane(Y).

must_be_diff(X, Y) :-
  \+ is_sane(X),
  is_sane(Y).


% 9. No experienced person is incompetent. Jenkins is always blundering. No
% competent person is always blundering. Therefore Jenkins is inexperienced.

blundering(jenkins).
not_blundering(giorgio).

competent(X) :-
  \+ blundering(X).

competent(X) :-
  not_blundering(X).

incompetent(X) :-
  \+ competent(X).

experienced(X) :-
  \+ incompetent(X).


% 11. (Lewis Caroll) Babies cannot manage crocodiles. Because babies are
% illogical. But illogical persons are despised. And nobody is despised who
% can manage a crocodile.

illogical(babies).

despised(X) :-
  illogical(X).

can_manage_crocodile(X) :-
  \+ despised(X).
