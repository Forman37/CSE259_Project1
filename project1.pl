asu(LeftRightMargin, BottomTopMargin, SpaceBetweenCharacters, FontSize) :-
	HorizontalSize is (LeftRightMargin * 2) + (SpaceBetweenCharacters * 2) + (FontSize * 3 * 3),
    write('Horizontal Size : '), write(HorizontalSize), nl,
    bounding_box_top(0, HorizontalSize + 2), nl,
    initial_newLines(0, BottomTopMargin, HorizontalSize),

    /*
    There are 5 blocks for the height. So we will make 5
    block predicates that does each function inside of each letter.
    Our Spaces for the BottomTopMargin will be done seperately
    */

    first_block(0, LeftRightMargin, SpaceBetweenCharacters, FontSize).
    


bounding_box_top(Current, Max) :-
    Current < Max,
    write('-'),
    Next is Current + 1,
    bounding_box_top(Next, Max).

bounding_box_top(Current, Max) :-
    Current >= Max.




initial_newLines(Current, Max, Spaces) :-
    Current < Max,
    write('|'),
    print_space(0, Spaces),
    write('|'),
    nl,
    Next is Current + 1,
    initial_newLines(Next, Max, Spaces).

initial_newLines(Current, Max, Spaces) :-
    Current >= Max.
        
    
first_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration < FontSize,
    write('|'),
    print_space(0, LeftRightMargin),
    print_star(0, FontSize * 3),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize * 3),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize),
    print_space(0, FontSize),
    print_star(0, FontSize),
    print_space(0, LeftRightMargin),
    write('|'),
    nl,
    Next is Iteration + 1,
    first_block(Next, LeftRightMargin, SpaceBetweenCharacters, FontSize).

first_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration >= FontSize.



print_star(Current, Max) :-
    Current < Max,
    write('*'),
    Next is Current + 1,
    print_star(Next, Max).
    
print_star(Current, Max) :-
    Current >= Max.



print_space(Current, Max) :-
    Current < Max,
    write(' '),
    Next is Current + 1,
    print_space(Next, Max).
    
print_space(Current, Max) :-
    Current >= Max.
