% From the book
% PROLOG PROGRAMMING IN DEPTH
% by Michael A. Covington, Donald Nute, and Andre Vellino
% (Prentice Hall, 1997).
% Copyright 1997 Prentice-Hall, Inc.
% For educational use only

% File TOKENIZE.PRO
% Tokenizer for natural-language input

% tokenize(+String,-Result)
%  Breaks String (a list of ASCII code) into a list of
%  atoms, discarding punctuation and converting all
%  letters to lower case.

tokenize([],[]) :- !.

tokenize(String,[Word|Rest]) :-
  grab_word(String,Chars,NewString),
  name(Word,Chars),
  tokenize(NewString,Rest).


% grab_word(+String,-Chars,-Rest)
%  Splits String into the characters constituting
%  the first token (Chars) and the remainder (Rest).

grab_word([32|Tail],[],Tail) :- !.      % stop upon hitting a blank

grab_word([],[],[]).                    % stop at end of list

grab_word([Char|Tail],Chars,Rest) :-    % skip punctuation marks
  punctuation_mark(Char), !,
  grab_word(Tail,Chars,Rest).

grab_word([Char|Tail1],[NewChar|Tail2],Rest) :-
  grab_word(Tail1,Tail2,Rest),
  lower_case(Char,NewChar).             % if within a word, keep going


% punctuation_mark(+Char)
%  Succeeds if Char is a punctuation mark.

punctuation_mark(Char) :- Char =< 47.
punctuation_mark(Char) :- Char >= 58, Char =< 64.
punctuation_mark(Char) :- Char >= 91, Char =< 96.
punctuation_mark(Char) :- Char >= 123.


% lower_case(+Char,-NewChar)
%  Translates any ASCII code to lower case.

lower_case(Char,NewChar) :-     % Add 32 to code of upper-case letter
   Char >= 65,
   Char =< 90,
   !,
   NewChar is Char+32.

lower_case(Char,Char).          % Leave all others unchanged
