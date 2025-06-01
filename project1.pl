asu(LeftRightMargin, BottomTopMargin, SpaceBetweenCharacters, FontSize) :-
	HorizontalSize is (LeftRightMargin * 2) + (SpaceBetweenCharacters * 2) + (FontSize * 3 * 3),
    write('Horizontal Size : '), write(HorizontalSize), nl,
    bounding_box_top(0, HorizontalSize + 2),
    initial_newLines(0, BottomTopMargin).
    
    

bounding_box_top(Current, Max) :-
    Current < Max,
    write('-'),
    Next is Current + 1,
    bounding_box_top(Next, Max).

bounding_box_top(Current, Max) :-
    Current >= Max.

initial_newLines(Current, Max) :-
    Current < Max,
    nl,
    Next is Current + 1,
    initial_newLines(Next, Max).

initial_newLines(Current, Max) :-
    Current >= Max.
        
    
