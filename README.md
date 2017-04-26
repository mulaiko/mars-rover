Running the code:

run "ruby run.rb" from project root.
edit "input.txt" for different test values/data to run.

Design decisions:

Main design decision was to use a cross class interface (duck type)
to implement the "turning" ability of the rover. This interface has methods
"left" and "right" - which can be seen in the different classes (East, West etc.) in the CardinalDirections module. 
This enables a cleaner overall design.

Also made use of a RoverCoordinates, Zone class to to handle coordinate related
notions.

Didn't focus on creating formatters for input, also bare bones implemenation
run.rb file. Main focus was on structuring the classes and relationships that make
up the solution.

Tests added to ensure code correctness.

Assumptions made:

- invalid input errors should be handled.
- rover not allowed to go out of zone
- Coordinate (0,0) is the origin
- no negative coordinates allowed
- single input text file which can be edited for different 
commands etc.
- single set of inputs at a time.
- all lines in the text file are present in specified format

Sample input/output:

Imput:
8 8 
8 8 W
MMLMRMLMMMMMMRMMMMM

Output: 
 0 1 W

Input:
 8 8
 0 1 E
 MMLMRMMMML

Output: 
 6 2 N
