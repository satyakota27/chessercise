# chessercise
<p> chessercise.rb is a program to calculate moves of a type of chess piece and its location given as input
</p>

Usage: $ruby chessercise-target.rb -piece 'knight' -location 'd2'

Please provide 2 arguments while running the program

<h3>Rook</h3>

<p> A rook is a type of piece which moves horizontal or vertically 7 steps in any direction possible for 
8 x 8 chess board.

i.e. If we put rook in the center of origin(0,0), it can make steps until (0,7), (7,0), (-7,0) (0,-7)
Here we are taking the locations from a1 to h8 , so the area of the steps will be from (1,1) to (8,8)
</p>

For calculating all possible moves for Rooks, we need to map the rook_moves with the current location coordinates.
Sorting them based on the 'y' coordinate

Board possible rook moves are the locations from (1,1) to (8,8),
hence we need to the reject the coordinates that do not belong to this area.

<h3>Queen</h3>
Queen is the superpower in the chess as it possess the functional movements of a rook and bishop,
which enables it to cover most of the board than any other piece would given in most of the scenarios.

It can make horizontal, vertical, diagonal(two sides), making it to move in 8 different directions.
However the maximum steps it can make given in any direction is limited to 7

<h3>Knight</h3>
Knight is the only chess piece which can jump over other pieces. It can have 8 kinds of moves on a given cartesian space.
If the Knight is at center(0,0), the possible moves are (1,2), (1,-2), (2,1), (2,-1), (-1,2), (-1,-2), (-2,1), (-2,-1).
So, it can make 2 moves in a given quadrant space. However, each step it makes is unique and can make only 1 leap at a time.

Coordinates to Location
<li>ord and chr are the methods which converts character to number and number to character respectively.</li>


<p>
Attaching the below test case results:
$ ruby chessercise_test.rb KNIGHT d2
b1, f1, b3, f3, c4, e4
Loaded suite chessercise_test
Started
.

Finished in 0.000605 seconds.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1652.89 tests/s, 1652.89 assertions/s

</p>

