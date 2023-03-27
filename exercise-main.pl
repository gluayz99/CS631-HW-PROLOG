parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).

sex(pam, feminine).
sex(tom, masculine).
sex(bob, masculine).
sex(liz, feminine).
sex(pat, feminine).
sex(ann, feminine).
sex(jim, masculine).

#For all X and Y,
#    Y is an offspring of X if
#    X is a parent of Y.

offspring(Y, X) :- parent(X, Y).


#For all X and Y,
#    X is the mother of Y if
#    X is a parent of Y and
#    X is a female.
mother(X, Y) :- parent(X, Y), female(X).

grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X).

hasachild(X) :- parent(X, Y).

happy(X) :- parent(X, Y), dif(X).

hastwochildren(X) :- parent(X, Y), parent(X, Z).