% From the book
% PROLOG PROGRAMMING IN DEPTH
% by Michael A. Covington, Donald Nute, and Andre Vellino
% (Prentice Hall, 1997).
% Copyright 1997 Prentice-Hall, Inc.
% For educational use only

% File LEARNER.PRO
% Program that modifies its own knowledge base

%  This program requires file "capitals_kb.pro", which should be a copy of CAPITALS.PRO

start :-  reconsult('capitals_kb.pro'),
          nl,
          write('Type names entirely in lower case, followed by a period.'),nl,
	  write('Names with two or more words must also be put in single quotes.'), nl,
          write('Type "stop." to quit.'), nl,
          nl,
          process_a_query.

process_a_query :- write('Province or State? '),
                   read(State),
                   answer(State).

   % If user typed "stop." then save the knowledge base and quit.

answer(stop) :-    write('Saving the knowledge base to "capitals_kb.pro" '),nl,
                   tell('capitals_kb.pro'),
                   write('% File capitals_kb.pro'),nl,
                   write('% Knowledge base for Section 2.11 of PPID'),nl,nl,
                   write(':- dynamic(capital_of/2).'),nl,   % omit if not needed
                   listing(capital_of),
                   told,
                   write('Done.'),nl.

   % If the state is in the knowledge base, display it, then
   % loop back to process_a_query

answer(State) :-   capital_of(State,City),
                   write('The capital of '),
                   write(State),
                   write(' is '),
                   write(City),nl,
                   nl,
                   process_a_query.

   % If the state is not in the knowledge base, ask the
   % user for information, add it to the knowledge base, and
   % loop back to process_a_query

answer(State) :-   \+ capital_of(State,_),
                   write('I do not know the capital of '),write(State),nl,
                   write('Please tell me.'),nl,
                   write('Capital? '),
                   read(City),
                   write('Thank you.'),nl,nl,
                   assertz(capital_of(State,City)),
                   process_a_query.
