/* all course names */ 
c_numbers(N) :- 
	course(Name,_,_). 

/* numbers of all computer programming language courses */ 
c_pl(N) :- 
	course(Name, pl, _). 

/* numbers of all non-computer programming language courses */
c_notpl(N) :-
	course(Name, notpl, _).

/* list of professors teaching 60 */
c_inst60(L) :-
	course(60,pl,L).

/* sorted list of professors teaching 60 */
c_inst60_sorted(L) :-
	
/* list of professors teaching 20 */
c_inst20(L) :-
	course(20,pl,L).

/* sorted list of professors teaching 20 */
c_inst20_sorted(L) :-

/* sorted list of professors teaching N */
(c_inst_sorted(N,L) :- 

/* number of courses with exactly one instructor */
c_single_inst(N) :-
	course(N,_,[_|[]]).

/* number of courses with more than one instructor */
c_multi_inst(N)  :- 
    course(N,_,[_|[_|_]]).

/* numbers of courses for which I is the only instructor */
c_exclusive(I,N) :-

/* numbers of courses with exactly one or exactly two instructors */

/* part 2 */

sortappend(List1, List2, AppendList) :-
  List1 > List2 %if no more elements
    ->   AppendList = []   %then return empty list
    ;   First == Last   %else if reached the last element
        ->   AppendList = [List1]  %then return the last element
        ;   Next is List1+1 %else continue iterating            
        ,   sortappend(Next,Last,Tail)   %recurse on the tail
        ,   AppendList = [First|Tail] %return appended list
