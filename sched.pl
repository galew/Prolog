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
c_12_inst_1or(N):-
		';'(course(N, _, [_]), course(N, _, [_,_])).

c_12_inst_2wo(N):-
		course(N, _, Q),
		Q \= [_,_,_].


/* part 2 */
 
delete_question("string_answer").



sortappend([List1],[List2],SortAppendList) :-
	append([List1],[List2],[Appendlist]).
	sort([Appendlist],SortAppendList).

/* part 3 */

distribute(W,[H],Y) :-
    append(W,H,Y).
distribute(W,[H|T],Y) :-
    distribute[W,T,Y1],
    append(Y,Y1,Y).

/* part 4 */

crossmyfor(R,H,Z) :-
    /* break into two rules */
    /* one generates two lists*/
    /* other rule crosses the lists */

    /* for the rule that crosses them: */
    /*  takes the head of the first list it's */
    /* given and calls distribute with that element */
    /* and the second list, and then a base case for */
    /* when the second list is empty tells it when to stop */


/* part 5 */



/* part 5a */
getallmeetings(C,Z) :-

/* part 5b */ 
participants(C,Z) :-

/* part 5c */
osched(MR,MH,C,Z) :-

/* part 5d */
xsched(MR, MH, C, Z) :-
