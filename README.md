Mars rover challenge
Rovers have been sent to Mars to survey the terrain and you have been charged with
creating their navigation system. These are the specifications you have been given:
• Mars’s surface has been divided into zones and each zone can be modelled as a twodimensional cartesian grid. The zones have been very carefully surveyed ahead of
time and are deemed safe for exploration within the zone’s bounds, as represented
by a single cartesian coordinate. E.g: (5, 5)
• The rover understands the cardinal points and can face either East (E), West (W),
North (N) or South (S)
• The rover understands three commands:
• M - Move one space forward in the direction it is facing
• R - rotate 90 degrees to the right
• L - rotate 90 degrees to the left
• Due to the transmission delay in communicating with the rover on Mars, you are only
able to send the rover a list of commands. These commands will be executed by the
rover and its resulting location sent back to HQ. This is an example of the list of
commands sent to the rover:
8 8
1 2 E
MMLMRMMRRMML
This is how the rover will interpret the commands:
The first line describes how big the current zone is. This zone’s boundary is at the Cartesian
coordinate of 8,8 and the zone comprises 64 blocks. The second line describes the rover’s
staring location and orientation. This rover would start at position 1 on the horizontal axis,
position 2 on the vertical axis and would be facing East (E). The third line is the list of
commands (movements and rotations) to be executed by the rover.
As a result of following these commands, a rover staring at 1 2 E in this zone would land up
at 3 3 S. 

#############################3
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

Imput:<br />
8 8 <br />
8 8 W<br />
MMLMRMLMMMMMMRMMMMM<br />

Output: <br />
 0 1 W<br />

Input:<br />
 8 8<br />
 0 1 E<br />
 MMLMRMMMML<br />

Output: <br />
 6 2 N<br />
