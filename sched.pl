/* all course names */
c_numbers(N) :-
        course(Name,_,_).
 
/* numbers of all computer programming language courses */
c_pl(N) :-
        course(Name,programming_languages,_).
 
/* numbers of all non-computer programming language courses */
c_notpl(N) :-
        course(Name,not(programming_languages),_).
 
/* list of professors teaching 60 */
c_inst60(L) :-
        course(60,_,L).
 
/* sorted list of professors teaching 60 */
c_inst60_sorted(L) :-
        sort(course(60,_,L)).
 
/* list of professors teaching 20 */
c_inst20(L) :-
        course(20,_,L).
 
/* sorted list of professors teaching 20 */
c_inst20_sorted(L) :-
        sort(course(20,_,L)).
 
/* sorted list of professors teaching N */
c_inst_sorted(N,L) :-
        sort(course(N,_,L)).
 
/* number of courses with exactly one instructor */
c_single_inst(N) :-
        course(N,_,[_|[]]).
 
/* number of courses with more than one instructor */
c_multi_inst(N)  :-
    course(N,_,[_|[_|_]]).
 
/* numbers of courses for which I is the only instructor */
 c_exclusive(I,N) :- 
    course(N,_,I).
 
/* numbers of courses with exactly one or exactly two instructors */




/* part 2 */
 
delete_question("string_answer").



sortappend([List1],[List2],SortAppendList) :-
	append([List1],[List2],[Appendlist]).
	sort([Appendlist],SortAppendList).
