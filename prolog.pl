{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 %parent\
parent(pam,bob).\
parent(tom,bob).\
parent(tom,liz).\
parent(bob,ann).\
parent(bob,pat).\
parent(pat,jim).\
\
%gender\
female(pam).\
female(liz).\
female(pat).\
female(ann).\
male(tom).\
male(bob).\
male(jim).\
\
happy(X):-parent(X,Y).\
hastwochildren(X):-parent(X,Y),sister(Y,Z).\
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X).\
grandchild(Y,Z):- parent(X,Y),parent(Z,X).\
aunt(X,Y):-parent(Z,Y),sister(X,Z),female(X),female(Z).\
predecessor(X,Z):-parent(X,Z).\
predecessor(X,Z):-parent(Y,Z),predecessor(X,Y).\
\
mother(X,Y):-parent(X,Y),female(X).\
\
grandparent(X,Z):-parent(X,Y),predecessor(Y,Z).}