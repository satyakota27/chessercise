require 'test/unit'
require './chessercise'

class PossibleMoves < Test::Unit::TestCase

  def setup
    @chess = Chessercise.new
  end

  def test_possible_moves

    moves = {
        rook: [{ x: 1, y: 0, steps: 7},
               { x: 0, y: 1, steps: 7},
               { x: 0, y: -1, steps: 7},
               { x: -1, y: 0, steps: 7}],
        queen: [{ x: 1, y: 0, steps: 7},
                { x: 0, y: 1, steps: 7},
                { x: 0, y: -1, steps: 7},
                { x: -1, y: 0, steps: 7},
                { x: 1, y: 1, steps: 7},
                { x: 1, y: -1, steps: 7},
                { x: -1, y: -1, steps: 7},
                { x: -1, y: 1, steps: 7}],
        knight: [{ x: 2, y: 1, steps: 1 },
                 { x: 1, y: 2, steps: 1 },
                 { x: 1, y: -2, steps: 1 },
                 { x: 2, y: -1, steps: 1 },
                 { x: -1, y: 2, steps: 1 },
                 { x: -2, y: 1, steps: 1 },
                 { x: -1, y: -2, steps: 1 },
                 { x: -2, y: -1, steps: 1 }]
    }



    output_moves = @chess.output_moves(:knight, 'd2', moves)

    assert_equal output_moves, 'b1, f1, b3, f3, c4, e4'
  end


end