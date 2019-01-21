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
parentals(rylan, shane, laura).
parentals(thomas, mark, louise).
parentals(marielaure, mark, louise).
parentals(mark, harold, june).
parentals(louise, gordon, esthel).
parentals(kelly, harold, june).
parentals(cathy, harold, june).
parentals(mado, gordon, esthel).
parentals(chuck, gordon, esthel).
parentals(sally, gordon, esthel).
parentals(david, pierre, mado).
parentals(shane, john, kelly).
parentals(marc, john, kelly).
parentals(jeff, john, kelly).
parentals(corey, barry, cathy).
parentals(tj, barry, cathy).
parentals(megan, barry, cathy).
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
% CANNOT do this... Every relationship gets reported twice...
parents(C,P1,P2) :- parentals(C,P1,P2) ; parentals(C,P2,P1).
spouse(S1,S2) :- married(S1,S2) ; married(S2,S1) ; ex_spouse(S1,S2) ; ex_spouse(S2,S1).
child(C,P) :- parents(C,P,_).
daughter(D,P) :- female(D) , child(D,P).
son(S,P) :- male(S) , child(S,P).
father(Fa,C) :- male(Fa), child(C,Fa).
mother(Mo,C) :- female(Mo), child(C,Mo).
grandparents(X,G1,G2) :- parents(X,P1,P2), ( parents(P1,G1,G2) ; parents(P2,G1,G2) ).
grandchild(X,G) :- grandparents(X,G,_) ; grandparents(X,_,G).
sister(Ss,X) :- female(Ss), parents(Ss,P1,P2), parents(X,P1,P2), Ss\=X.
% half_sister, half_brother
brother(Br,Y) :- male(Br), parents(Br,P1,P2), parents(Y,P1,P2), Br\=Y.
sibling(W,Z) :- brother(W,Z) ; sister(W,Z).
aunt(A,Nn) :- female(A), parents(Nn,P1,P2),
             ( sibling(A,P1) ; sibling(A,P2) ; (sibling(Q,P1) , spouse(A,Q)) ; (sibling(R,P2) , spouse(A,R)) ).
uncle(U,Nn) :- male(U), parents(Nn,P1,P2),
             ( sibling(U,P1) ; sibling(U,P2) ; (sibling(Q,P1) , spouse(U,Q)) ; (sibling(R,P2) , spouse(U,R)) ).
% too many problems with this definition of uncle() trying to use aunt()
% -- duplicate instantiations in some cases if DON'T have the 'A\=P1 , A\=P2'
%    or leaves out chuck as uncle()... ??
%uncle(U,Nn) :- male(U), parents(Nn,P1,P2), ( sibling(U,P1) ; sibling(U,P2) ) ; ((aunt(A,Nn) , spouse(A,U)) , A\=P1) , A\=P2) ).
nephew(Np,X) :- male(Np), (uncle(X,Np) ; aunt(X,Np)).
niece(Nc,Y) :- female(Nc), (uncle(Y,Nc) ; aunt(Y,Nc)).
cousin(K,L) :- grandparents(K,GF,GM), grandparents(L,GF,GM), not(sibling(K,L)), K\=L.
brother_in_law(B,P) :- (brother(B,X),spouse(X,P)); (sister(Y,P),spouse(Y,B)).
sister_in_law(S,P) :- (sister(S,X),spouse(X,P)); (brother(Y,P),spouse(Y,S)).
% father_in_law, mother_in_law, in_law, great_grandparents ...
