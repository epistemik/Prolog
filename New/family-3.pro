% Facts
%-------
male(mark).
male(thomas).
male(harold).
male(gordon).
male(chuck).
male(david).
male(pierre).
male(john).
male(barry).
male(shane).
male(marc).
male(jeff).
male(corey).
male(tj).
male(ed).
male(rylan).
female(megan).
female(louise).
female(marielaure).
female(kelly).
female(cathy).
female(june).
female(esthel).
female(mado).
female(sally).
female(laura).
female(grace).
child(marielaure, louise).
child(louise, esthel).
child(kelly, june).
child(cathy, june).
child(mado, esthel).
child(sally, esthel).
child(megan, cathy).
child(marielaure, mark).
child(louise, gordon).
child(kelly, harold).
child(cathy, harold).
child(mado, gordon).
child(sally, gordon).
child(megan, barry).
child(rylan, laura).
child(thomas, louise).
child(mark, june).
child(chuck, esthel).
child(david, mado).
child(shane, kelly).
child(marc, kelly).
child(jeff, kelly).
child(corey, cathy).
child(tj, cathy).
child(rylan, laura).
child(thomas, mark).
child(mark, harold).
child(chuck, gordon).
child(david, pierre).
child(shane, john).
child(marc, john).
child(jeff, john).
child(corey, barry).
child(tj, barry).
married(mado, pierre).
married(cathy, barry).
married(louise, mark).
married(esthel, gordon).
married(shane, laura).
married(marc, grace).
ex_spouse(kelly, john).
ex_spouse(harold, june).
ex_spouse(june, ed).

% Rules
%-------
spouse(S1,S2) :- married(S1,S2) ; married(S2,S1) ; ex_spouse(S1,S2) ; ex_spouse(S2,S1).
son(S,P) :- male(S) , child(S,P).
daughter(D,P) :- female(D) , child(D,P).
parent(P,C) :- child(C,P).
%parents(P1,P2,C) :- parent(P1,C) , parent(P2,C) , P2\=P1.
father(Fa,C) :- male(Fa) , child(C,Fa).
mother(Mo,C) :- female(Mo) , child(C,Mo).
grandparent(Gp,Gc) :- parent(Gp,X) , parent(X,Gc).
grandchild(Gc,Gp) :- grandparent(Gp,Gc).
grandfather(Gf,Gc) :- male(Gf) , grandparent(Gf,Gc).
grandmother(Gm,Gc) :- female(Gm) , grandparent(Gm,Gc).
sister(Ss,X) :- female(Ss) , parent(P1,Ss) , parent(P2,Ss) , P1\=P2 , parent(P1,X) , parent(P2,X).
half_sister(Ss,X) :- female(Ss) , parent(P1,Ss) , parent(P1,X) , not(sister(Ss,X)).
brother(Br,Y) :- male(Br) , parent(P1,Br) , parent(P2,Br) , P1\=P2 , parent(P1,Y) , parent(P2,Y).
half_brother(Br,Y) :- male(Br) , parent(P1,Br) , parent(P1,Y) , not(brother(Br,Y)).
sibling(W,Z) :- brother(W,Z) ; sister(W,Z).
half_sibling(Hs,Z) :- ( half_brother(Hs,Z) , not(brother(Hs,Z)) ) ; ( half_sister(Hs,Z) , not(sister(Hs,Z)) ).
aunt(A,Nn) :- female(A) , parent(P,Nn) , ( sister(A,P) ; (sibling(Q,P) , spouse(A,Q)) ) , not(mother(A,Nn)).
uncle(U,Nn) :-  male(U) , not(father(U,Nn)) , parent(P,Nn) , ( brother(U,P) ; (sibling(Q,P) , spouse(U,Q)) ).
nephew(Np,Au) :-  male(Np) , (uncle(Au,Np) ; aunt(Au,Np)).
niece(Nc,Au) :- female(Nc) , (uncle(Au,Nc) ; aunt(Au,Nc)).
cousin(K,L) :- grandparent(Gp,K), true  , grandparent(Gp,L) , not(sibling(K,L)) , K\=L.
brother_in_law(B,P) :- (brother(B,X) , spouse(X,P)) ; (sister(Y,P) , spouse(Y,B)).
sister_in_law(S,P) :- (sister(S,X) , spouse(X,P)) ; (brother(Y,P) , spouse(Y,S)).
% father_in_law, mother_in_law, in_law, great_grandparents ...
