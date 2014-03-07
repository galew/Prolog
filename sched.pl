/* all course names */
c_numbers(N) :-
        course(N,_,_).
 
/* numbers of all computer programming language courses */
c_pl(N) :-
        course(N,programming_languages,_).
 
/* numbers of all non-computer programming language courses */
c_notpl(N) :-
        course(N,ID,_),
	ID \= 'programming_languages'.
 
/* list of professors teaching 60 */
c_inst60(L) :-
        course(60,_,L).
 
/* sorted list of professors teaching 60 */
c_inst60_sorted(OUT) :-
        course(60,_,L),
	sort(L, OUT).
 
/* list of professors teaching 20 */
c_inst20(L) :-
        course(20,_,L).
 
/* sorted list of professors teaching 20 */
c_inst20_sorted(OUT) :-
        course(20,_,L),
	sort(L, OUT).
 
/* sorted list of professors teaching N */
c_inst_sorted(N,OUT) :-
        course(N,_,L),
	sort(L, OUT).
 
/* number of courses with exactly one instructor */
c_single_inst(N) :-
        course(N,_,[_|[]]).
 
/* number of courses with more than one instructor */
c_multi_inst(N)  :-
    course(N,_,[_|[_|_]]).
 
/* numbers of courses for which I is the only instructor */
 c_exclusive(I,N) :- 
    course(N,_,[I|[]]).
 
/* numbers of courses with exactly one or exactly two instructors */
c_12_inst_1or(N):-
		(course(N, _, [_]) ; course(N, _, [_,_])).

c_12_inst_2wo(N):-
		course(N, _, [_ | []]).

c_12_inst_2wo(N):-
		course(N, _, [_ | [_ | []]]).


/* part 2 */
 
delete_question("p. 157").

/* This follows the delete behavior on page 157 */

sortappend([], [], []).
sortappend([H1|T1], B, Z) :-
   sortappend(T1, [], Y1),
   sortappend(B, [], Y2),
   append(Y1, Y2, Y),
   sort([H1 | Y], Z).


/* part 3 */

distribute(W,[],Y) :-
    Y = [].
distribute(W,[H|T],Y) :-
    distribute(W,T,Z),
    Y = [[W,H]|Z].


/* part 4 */


/* myfor(L,U,Result) */

myfor(L,U,Result) :-
    L =< U,
    L1 is L+1,
    myfor(L1,U,Res1),
    Result = [L | Res1].

myfor(L,U,[]) :-
    L>U.


crossmyfor(0,H,[]). 
crossmyfor(R,H,Z) :-
        myfor(1,R,X), 
        myfor(1,H,Y),  
        last(X,V), 
        K is V-1, 
        distribute(V, Y, W), 
        crossmyfor(K,H,Q), 
        append(Q,W,Z).


/* part 5 */



/* part 5a */
getallmeetings([],[]).

getallmeetings(C,Z) :-
        C = [H|T], 
        H = [_|[W|_]], 
        getallmeetings(T, U), 
        append(W, U, V), 
        sort(V, Z).

/* part 5b */ 


distributeNew(_,[],[]).

distributeNew(W,[H|T],Y) :-
        append([H],[W],G), 
        distributeNew(W,T,V), 
        append([G],V,Y).


participants([],[]).
participants(C,Z) :-
        C = [H|T],
         H = [Name|[MeetingList|_]], 
         makelist(MeetingList, Mlist),
         distributeNew([Name],Mlist,G), 
         participants(T,U), 
         append(G,U,Z).



makelist([],[]).
makelist([H|T],Z) :-
    makelist(T,U), append([H],U,Z).

/* part 5c */
% osched(MR,MH,C,Z).

/* part 5d */
% xsched(MR, MH, C, Z).
