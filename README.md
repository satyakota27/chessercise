<p> chessercise.rb is a program to calculate moves of a type of chess piece and its location given as input
</p>

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


Coordinates to Location
ord and chr are the methods which converts character to number and number to character respectively.
