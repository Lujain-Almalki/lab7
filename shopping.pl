:- dynamic basket/1.

basket([milk, bread, eggs, rice, juice]).

display_items([]).
display_items([H|T]) :-
    writeln(H),
    display_items(T).

menu :-
    nl,
    writeln('Shopping Menu'),
    writeln('d - Display items'),
    writeln('a - Add an item'),
    writeln('e - Exit'),
    write('Enter your choice: '),
    read(Choice),
    action(Choice).

action(d) :-
    basket(Items),
    display_items(Items),
    menu.

action(a) :-
    write('Enter item: '),
    read(Item),
    basket(Items),
    append(Items, [Item], NewItems),
    retractall(basket(_)),
    assertz(basket(NewItems)),
    menu.

action(e) :-
    writeln('Goodbye!').
