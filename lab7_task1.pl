deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).
