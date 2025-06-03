asu(LeftRightMargin, BottomTopMargin, SpaceBetweenCharacters, FontSize) :-

    /*
        To get the HorizontalSize (which is the size from 1 boarder to the other) we do:
        
        - 2 * LeftRightMargin (left and right padding)
        - 2 * SpaceBetweenCharacters (spaces between A, S, and U)
        - FontSize * 3 * 3:
            - 3 letters (A, S, U)
            - Each letter has 3 sections across its width

        So the formula is:
        (LeftRightMargin * 2) + (SpaceBetweenCharacters * 2) + (FontSize * 3 * 3)
    */

	HorizontalSize is (LeftRightMargin * 2) + (SpaceBetweenCharacters * 2) + (FontSize * 3 * 3),

    % Top bounding box and margin
    bounding_box_topBot(0, HorizontalSize + 2), nl,
    top_bottom_margins(0, BottomTopMargin, HorizontalSize),

    /*
    There are 5 blocks for the height. So we will make 5
    block predicates that does each function inside of each letter.
    Our Spaces for the BottomTopMargin will be done seperately
    */

    first_block(0, LeftRightMargin, SpaceBetweenCharacters, FontSize),
    second_block(0, LeftRightMargin, SpaceBetweenCharacters, FontSize),
    third_block(0, LeftRightMargin, SpaceBetweenCharacters, FontSize),
    fourth_block(0, LeftRightMargin, SpaceBetweenCharacters, FontSize),
    fifth_block(0, LeftRightMargin, SpaceBetweenCharacters, FontSize),

    % Bottom part margin and bounding box
    top_bottom_margins(0, BottomTopMargin, HorizontalSize),
    bounding_box_topBot(0, HorizontalSize + 2).
    


bounding_box_topBot(Current, Max) :-
    Current < Max,
    write('-'),
    Next is Current + 1,
    bounding_box_topBot(Next, Max).

bounding_box_topBot(Current, Max) :-
    Current >= Max.




top_bottom_margins(Current, Max, Spaces) :-
    Current < Max,
    write('|'),
    print_space(0, Spaces),
    write('|'),
    nl,
    Next is Current + 1,
    top_bottom_margins(Next, Max, Spaces).

top_bottom_margins(Current, Max, Spaces) :-
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


second_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration < FontSize,
    write('|'),
    print_space(0, LeftRightMargin),
    print_star(0, FontSize),
    print_space(0, FontSize),
    print_star(0, FontSize),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize),
    print_space(0, FontSize * 2),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize),
    print_space(0, FontSize),
    print_star(0, FontSize),
    print_space(0, LeftRightMargin),
    write('|'),
    nl,
    Next is Iteration + 1,
    second_block(Next, LeftRightMargin, SpaceBetweenCharacters, FontSize).

second_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration >= FontSize.

third_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
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
    third_block(Next, LeftRightMargin, SpaceBetweenCharacters, FontSize).

third_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration >= FontSize.

fourth_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration < FontSize,
    write('|'),
    print_space(0, LeftRightMargin),
    print_star(0, FontSize),
    print_space(0, FontSize),
    print_star(0, FontSize),
    print_space(0, SpaceBetweenCharacters),
    print_space(0, FontSize * 2),
    print_star(0, FontSize),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize),
    print_space(0, FontSize),
    print_star(0, FontSize),
    print_space(0, LeftRightMargin),
    write('|'),
    nl,
    Next is Iteration + 1,
    fourth_block(Next, LeftRightMargin, SpaceBetweenCharacters, FontSize).

fourth_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration >= FontSize.

fifth_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
    Iteration < FontSize,
    write('|'),
    print_space(0, LeftRightMargin),
    print_star(0, FontSize),
    print_space(0, FontSize),
    print_star(0, FontSize),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize * 3),
    print_space(0, SpaceBetweenCharacters),
    print_star(0, FontSize * 3),
    print_space(0, LeftRightMargin),
    write('|'),
    nl,
    Next is Iteration + 1,
    fifth_block(Next, LeftRightMargin, SpaceBetweenCharacters, FontSize).

fifth_block(Iteration, LeftRightMargin, SpaceBetweenCharacters, FontSize) :-
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
