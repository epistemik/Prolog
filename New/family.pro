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
female(megan).
female(louise).
female(marielaure).
female(kelly).
female(cathy).
female(june).
female(esthel).
female(mado).
female(sally).
parents(thomas, mark, louise).
parents(marielaure, mark, louise).
parents(mark, harold, june).
parents(louise, gordon, esthel).
parents(kelly, harold, june).
parents(cathy, harold, june).
parents(mado, gordon, esthel).
parents(chuck, gordon, esthel).
parents(sally, gordon, esthel).
parents(david, pierre, mado).
parents(shane, john, kelly).
parents(marc, john, kelly).
parents(jeff, john, kelly).
parents(corey, barry, cathy).
parents(tj, barry, cathy).
parents(megan, barry, cathy).
spouse(mado, pierre).
spouse(kelly, john).
spouse(cathy, barry).
spouse(louise, mark).
spouse(june, ed).
spouse(esthel, gordon).

% Rules
%-------
child(C,P) :- parents(C,P,_) ; parents(C,_,P).
father(F,C) :- male(F), parents(C,F,_).
mother(M,C) :- female(M), parents(C,_,M).
grandparents(X,GF,GM) :- parents(X,F,M), (parents(F,GF,GM);parents(M,GF,GM)).
grandchild(X,G) :- grandparents(X,G,_) ; grandparents(X,_,G).
sister(A,B) :- female(A), parents(A,F,M), parents(B,F,M), A\=B.
brother(X,Y) :- male(X), parents(Y,F,M), parents(X,F,M), X\=Y.
sibling(W,Z) :- brother(W,Z) ; sister(W,Z).
aunt(A,N) :- female(A), parents(N,F,M), 
             ( sibling(A,F) ; sibling(A,M) ;
               (sibling(Q,F),spouse(A,Q)) ; (sibling(R,M),spouse(A,R)) ).
uncle(U,N) :- male(U), parents(N,F,M), (sibling(U,F) ; sibling(U,M)).
uncle(U,N) :- aunt(A,N), spouse(A,U).
nephew(N,X) :- male(N), (uncle(X,N) ; aunt(X,N)).
niece(N,Y) :- female(N), (uncle(Y,N) ; aunt(Y,N)).
cousin(K,L) :- grandparents(K,GF,GM), grandparents(L,GF,GM), 
               not(sibling(K,L)), K\=L.
brother_in_law(B,P) :- (brother(B,X),spouse(X,P)); (sister(Y,P),spouse(Y,B)).
sister_in_law(S,P) :- (sister(S,X),spouse(X,P)); (brother(Y,P),spouse(Y,S)).