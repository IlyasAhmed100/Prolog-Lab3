{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 % Task 10.1\
toEven([], []). \
toEven([H|T], [H1|R]) :- 1 is mod(H,2), !, H1 is H+1, toEven(T, R). \
toEven([H|T], [H|R]) :- toEven(T, R).\
\
% Task 10.2 \
% i) \
mem_rem(H,[H|T],R) :- R = T.\
mem_rem(X, [H|T], [H|R]) :- mem_rem(X, T, R).\
% mem_rem(X,[1,2,3,4],Ys).\
\
% ii) \
sel(0,S,[],S).\
sel(N,S,[X|Xs],R) :-\
  N > 0, N1 is N-1,\
  mem_rem(X,S,S1),\
  sel(N1,S1,Xs,R).\
}