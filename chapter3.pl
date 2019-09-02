% A. Which of the following types of inference steps are valid (i.e. are such
% that all their instances are valid)? If you suspect an inference-type is
% invalid, find an instance that obviously fails because it has plainly true
% premisses and a false conclusion.

% A1. Some F are G; no G is H; so, some F are not H.
%
% Some (F) French are (G) gaudy; no (G) gaudy person is (H) humble; so, some
% (F) French are not (H) humble.
%
% Valid.

french(pierre).
french(jean).
french(claude).

gaudy(pierre).
gaudy(jean).

not_humble(X) :-
  gaudy(X).


% A2. Some F are G; some F are H; so, some G are H.
%
% Some (F) humans are (G) male; some (F) humans are (H) female; so, some (G)
% males are (H) females.
%
% Invalid.

male(pierre).
male(claude).
female(jean).
%female(claude).

male_and_female :-
  male(X),
  female(X).


% A3. All F are G; some F are H; so, some H are G.
%
% All (F) French are (G) grumpy; some (F) French are (H) hairy; so, some (H)
% hairy people are (G) grumpy.
%
% Valid.

grumpy(pierre).
grumpy(jean).
grumpy(claude).

hairy(pierre).
hairy(claude).

grumpy_and_hairy(X) :-
  grumpy(X),
  hairy(X).


% 4. No F is G; some G are H; so, some H are not F.
% 
% No (F) french is (G) german. Some (G) germans are (H) honest; so, some
% (H) honest people are not (F) french.
%
% Valid.

german(gunther).
german(fritz).
german(helga).
german(ursula).
german(ingrid).

honest(pierre).
honest(claude).
honest(gunther).
honest(helga).
honest(ursula).
honest(ingrid).

honest_people(X) :-
  honest(X),
  \+ french(X).
