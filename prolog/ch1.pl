
%% https://stackoverflow.com/questions/47107786/prolog-existence-error-procedure-in-basic-example

parent(tom, bob).
parent(pam, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
offspring(Y, X) :- parent(X,Y).

%% :- discontiguous female/1.
%% :- discontiguous male/1.
female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

mother(X, Y) :-
    parent(X, Y),
    female(X).

grandparent(X,Z) :-
    parent(X,Y),
    parent(Y,Z).

sister(X,Y) :-
    parent(Z, X),
    parent(Z, Y),
    female(X),
    different(X, Y).

haschild(X) :-
    parent(X, _Y).

predecessor(X,Z) :-
    parent(X,Z).

predecessor(X,Z) :-
    parent(X,Y),
    parent(Y,Z).
