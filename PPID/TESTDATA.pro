% From the book
% PROLOG PROGRAMMING IN DEPTH
% by Michael A. Covington, Donald Nute, and Andre Vellino
% (Prentice Hall, 1997).
% Copyright 1997 Prentice-Hall, Inc.
% For educational use only

% TESTDATA.PL
% Fodder for sorting algorithms

testlist(almost_sorted,N,[999|Rest]) :- testlist(sorted,N,[_|Rest]).

testlist(almost_backward,N,[0|Rest]) :- testlist(backward,N,[_|Rest]).

testlist(random, 10, [116, 104, 101, 32, 113, 117, 105, 99, 107, 32]).

testlist(random, 100, [116, 104, 101, 32, 113, 117, 105, 99, 107, 32,
98, 114, 111, 119, 110, 32, 102, 111, 120, 32, 106, 117, 109, 112,
101, 100, 32, 111, 118, 101, 114, 32, 116, 104, 101, 32, 108, 97, 122,
121, 32, 100, 111, 103, 39, 115, 32, 98, 97, 99, 107, 32, 97, 110,
100, 32, 116, 104, 105, 115, 32, 105, 115, 32, 97, 32, 115, 97, 109,
112, 108, 101, 32, 111, 102, 32, 116, 101, 120, 116, 32, 116, 104, 97,
116, 32, 103, 111, 101, 115, 32, 104, 101, 114, 101, 32, 97, 110, 100,
32]).

testlist(random, 1000, [116, 104, 101, 32, 113, 117, 105, 99, 107, 32,
98, 114, 111, 119, 110, 32, 102, 111, 120, 32, 106, 117, 109, 112,
101, 100, 32, 111, 118, 101, 114, 32, 116, 104, 101, 32, 108, 97, 122,
121, 32, 100, 111, 103, 39, 115, 32, 98, 97, 99, 107, 32, 97, 110,
100, 32, 116, 104, 105, 115, 32, 105, 115, 32, 97, 32, 115, 97, 109,
112, 108, 101, 32, 111, 102, 32, 116, 101, 120, 116, 32, 116, 104, 97,
116, 32, 103, 111, 101, 115, 32, 104, 101, 114, 101, 32, 97, 110, 100,
32, 116, 104, 101, 114, 101, 32, 119, 105, 116, 104, 111, 117, 116,
32, 101, 110, 100, 105, 110, 103, 32, 117, 112, 32, 97, 110, 121, 119,
104, 101, 114, 101, 46, 32, 32, 84, 104, 105, 115, 32, 105, 115, 32,
97, 32, 116, 101, 115, 116, 32, 119, 105, 116, 104, 32, 97, 32, 115,
97, 109, 112, 108, 101, 32, 111, 102, 32, 116, 101, 120, 116, 46, 32,
32, 73, 32, 110, 101, 118, 101, 114, 32, 115, 97, 119, 32, 97, 32,
112, 117, 114, 112, 108, 101, 32, 99, 111, 119, 44, 32, 73, 32, 110,
101, 118, 101, 114, 32, 104, 111, 112, 101, 32, 116, 111, 32, 115,
101, 101, 32, 111, 110, 101, 44, 32, 98, 117, 116, 32, 73, 32, 99, 97,
110, 32, 116, 101, 108, 108, 32, 121, 111, 117, 32, 97, 110, 121, 104,
111, 119, 44, 32, 73, 39, 100, 32, 114, 97, 116, 104, 101, 114, 32,
115, 101, 101, 32, 116, 104, 97, 110, 32, 98, 101, 32, 111, 110, 101,
46, 32, 32, 84, 104, 101, 114, 101, 32, 105, 115, 32, 111, 110, 101,
32, 97, 114, 116, 44, 32, 110, 111, 32, 109, 111, 114, 101, 44, 32,
110, 111, 32, 108, 101, 115, 115, 58, 32, 84, 111, 32, 100, 111, 32,
97, 108, 108, 32, 116, 104, 105, 110, 103, 115, 32, 119, 105, 116,
104, 32, 97, 114, 116, 108, 101, 115, 115, 110, 101, 115, 115, 46, 32,
32, 84, 104, 101, 32, 113, 117, 105, 99, 107, 32, 98, 114, 111, 119,
110, 32, 102, 111, 120, 32, 99, 111, 110, 116, 105, 110, 117, 101,
100, 32, 116, 111, 32, 106, 117, 109, 112, 32, 111, 118, 101, 114, 32,
116, 104, 101, 32, 108, 97, 122, 121, 32, 100, 111, 103, 39, 115, 32,
98, 97, 99, 107, 32, 97, 108, 108, 32, 116, 104, 114, 111, 117, 103,
104, 32, 116, 104, 105, 115, 32, 116, 121, 112, 105, 110, 103, 32,
101, 120, 101, 114, 99, 105, 115, 101, 46, 32, 32, 65, 103, 97, 105,
110, 32, 119, 101, 32, 99, 111, 110, 116, 105, 110, 117, 101, 32, 113,
117, 111, 116, 105, 110, 103, 32, 80, 105, 101, 116, 32, 72, 101, 105,
110, 58, 32, 65, 32, 110, 101, 101, 100, 108, 101, 32, 105, 110, 32,
97, 32, 104, 97, 121, 115, 116, 97, 99, 107, 32, 105, 115, 32, 105,
109, 112, 111, 115, 115, 105, 98, 108, 101, 32, 116, 111, 32, 102,
105, 110, 100, 46, 32, 32, 89, 111, 117, 114, 32, 99, 104, 97, 110,
99, 101, 32, 111, 102, 32, 101, 118, 101, 114, 32, 102, 105, 110, 100,
105, 110, 103, 32, 111, 110, 101, 32, 105, 115, 32, 115, 109, 97, 108,
108, 46, 32, 32, 69, 115, 112, 101, 99, 105, 97, 108, 108, 121, 32,
115, 105, 110, 99, 101, 32, 104, 97, 121, 115, 116, 97, 99, 107, 115,
32, 111, 102, 32, 116, 104, 101, 32, 111, 114, 100, 105, 110, 97, 114,
121, 32, 107, 105, 110, 100, 32, 100, 111, 110, 39, 116, 32, 104, 97,
118, 101, 32, 97, 110, 121, 32, 110, 101, 101, 100, 108, 101, 115, 32,
105, 110, 32, 97, 116, 32, 97, 108, 108, 46, 32, 32, 72, 97, 118, 101,
32, 119, 101, 32, 103, 111, 116, 32, 97, 32, 116, 104, 111, 117, 115,
97, 110, 100, 32, 108, 101, 116, 116, 101, 114, 115, 32, 121, 101,
116, 63, 32, 32, 79, 102, 32, 99, 111, 117, 114, 115, 101, 32, 110,
111, 116, 44, 32, 115, 111, 32, 99, 111, 110, 116, 105, 110, 117, 101,
46, 32, 32, 65, 108, 108, 32, 116, 104, 97, 116, 32, 105, 115, 32,
110, 111, 116, 32, 101, 116, 101, 114, 110, 97, 108, 32, 105, 115, 32,
101, 116, 101, 114, 110, 97, 108, 108, 121, 32, 111, 117, 116, 32,
111, 102, 32, 100, 97, 116, 101, 46, 32, 32, 65, 110, 100, 32, 97,
103, 97, 105, 110, 32, 113, 117, 111, 116, 105, 110, 103, 32, 77, 114,
32, 72, 101, 105, 110, 58, 32, 84, 104, 101, 32, 119, 101, 108, 108,
32, 121, 111, 117, 32, 105, 110, 118, 105, 116, 101, 32, 117, 115, 32,
116, 111, 32, 100, 114, 105, 110, 107, 32, 111, 102, 32, 105, 115, 32,
111, 110, 101, 32, 116, 104, 97, 116, 32, 110, 111, 32, 100, 114, 111,
112, 32, 109, 97, 121, 32, 98, 101, 32, 98, 111, 117, 103, 104, 116,
32, 111, 102, 46, 32, 32, 89, 111, 117, 32, 116, 104, 105, 110, 107,
32, 111, 102, 32, 119, 104, 97, 116, 32, 97, 108, 108, 32, 111, 102,
32, 117, 115, 32, 116, 104, 105, 110, 107, 32, 111, 102, 44, 32, 97,
110, 100, 32, 110, 111, 98, 111, 100, 121, 32, 101, 108, 115, 101, 32,
99, 111, 117, 108, 100, 32, 104, 97, 118, 101, 32, 116, 104, 111, 117,
103, 104, 116, 32, 111, 102, 46, 32, 84, 104, 101, 32, 113, 117, 105,
99, 107, 32, 98, 114, 111, 119, 110, 32, 102, 111, 120, 32, 106, 117,
109, 112, 101, 100, 32, 111, 118, 101, 114, 32, 116, 104, 101, 32,
108, 97, 122, 121, 32, 100, 111, 103]).  

testlist(sorted, 10, [32, 32, 99, 101, 104, 105, 107, 113, 116, 122]). 

testlist(sorted, 100, 
[32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 39, 97, 97, 97, 97, 97, 97, 97,
98, 98, 99, 99, 100, 100, 100, 100, 101, 101, 101, 101, 101, 101, 101,
101, 101, 102, 102, 103, 103, 104, 104, 104, 104, 104, 105, 105, 105,
106, 107, 107, 108, 108, 109, 109, 110, 110, 110, 111, 111, 111, 111,
111, 111, 112, 112, 113, 114, 114, 114, 115, 115, 115, 115, 115, 116,
116, 116, 116, 116, 116, 116, 117, 117, 118, 119, 120, 120, 121,
122]).  

testlist(sorted, 1000, [32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 39, 39, 39, 39, 44, 44, 44, 44,
44, 44, 44, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 58, 58,
58, 63, 65, 65, 65, 65, 69, 72, 72, 72, 73, 73, 73, 73, 77, 79, 80,
84, 84, 84, 84, 84, 84, 89, 89, 97, 97, 97, 97, 97, 97, 97, 97, 97,
97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97,
97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97,
97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 98,
98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99,
99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100,
100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
100, 100, 100, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 102, 102, 102, 102, 102,
102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 103, 103,
103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103,
104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104,
104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104,
104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 105, 105,
105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105,
105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105,
105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105,
105, 105, 105, 106, 106, 106, 107, 107, 107, 107, 107, 107, 107, 107,
107, 107, 107, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108,
108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108,
108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 109, 109, 109, 109,
109, 109, 109, 109, 109, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 112, 112, 112, 112, 112,
112, 112, 112, 112, 112, 112, 112, 112, 113, 113, 113, 113, 113, 114,
114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114,
114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114,
114, 114, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115,
115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115,
115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115,
115, 115, 115, 115, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 117,
117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117,
117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 118,
118, 118, 118, 118, 118, 118, 118, 118, 118, 119, 119, 119, 119, 119,
119, 119, 119, 119, 119, 119, 119, 119, 119, 120, 120, 120, 120, 120,
120, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121,
121, 121, 121, 121, 122, 122, 122]).  


testlist(backward, 10, [117, 116, 113, 107, 105, 104, 101, 99, 32, 32]).

testlist(backward, 100, [122, 121, 120, 120, 119, 118, 117, 117, 116,
116, 116, 116, 116, 116, 116, 115, 115, 115, 115, 115, 114, 114, 114,
113, 112, 112, 111, 111, 111, 111, 111, 111, 110, 110, 110, 109, 109,
108, 108, 107, 107, 106, 105, 105, 105, 104, 104, 104, 104, 104, 103,
103, 102, 102, 101, 101, 101, 101, 101, 101, 101, 101, 101, 100, 100,
100, 100, 99, 99, 98, 98, 97, 97, 97, 97, 97, 97, 97, 39, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32]).

testlist(backward, 1000, [122, 122, 122, 121, 121, 121, 121, 121, 121,
121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 120, 120, 120,
120, 120, 120, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119,
119, 119, 119, 118, 118, 118, 118, 118, 118, 118, 118, 118, 118, 117,
117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117,
117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116,
116, 116, 116, 116, 116, 116, 116, 116, 115, 115, 115, 115, 115, 115,
115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115,
115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115,
115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 114, 114, 114, 114,
114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114,
114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 113,
113, 113, 113, 113, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112,
112, 112, 112, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111, 111,
111, 111, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
110, 110, 110, 110, 110, 110, 110, 109, 109, 109, 109, 109, 109, 109,
109, 109, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108,
108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108, 108,
108, 108, 108, 108, 108, 108, 108, 108, 108, 107, 107, 107, 107, 107,
107, 107, 107, 107, 107, 107, 106, 106, 106, 105, 105, 105, 105, 105,
105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105,
105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105,
105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105, 105,
104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104,
104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104,
104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 103, 103,
103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103,
102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102,
102, 102, 102, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101, 101,
101, 101, 101, 101, 101, 101, 101, 101, 101, 100, 100, 100, 100, 100,
100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
100, 100, 100, 100, 100, 100, 100, 99, 99, 99, 99, 99, 99, 99, 99, 99,
99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 98, 98, 98, 98, 98, 98, 98,
98, 98, 98, 98, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97,
97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97,
97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97,
97, 97, 97, 97, 97, 97, 89, 89, 84, 84, 84, 84, 84, 84, 80, 79, 77,
73, 73, 73, 73, 72, 72, 72, 69, 65, 65, 65, 65, 63, 58, 58, 58, 46,
46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 44, 44, 44, 44, 44, 44,
44, 39, 39, 39, 39, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
32, 32, 32, 32, 32, 32, 32, 32]).


