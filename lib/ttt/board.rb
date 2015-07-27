module TTT
  ##
  # Manages the Tic Tac Toe grid by
  # setting and getting grid values and checking if the game has ended with a win or a draw.
  class Board
    attr_reader :grid

    # Instantiated with a user-specified hash or a default value by empty Cells objects.
    # = Example
    #
    #   Board.new - instantiated with default values
    #   grid = [
    #             [x_cell, x_cell, x_cell],
    #             [y_cell, x_cell, y_cell],
    #             [y_cell, y_cell, empty_cell]
    #           ]
    #  Board.new grid:grid - instantiated with user-specified grid
    def initialize(params={})
      @grid = params.fetch(:grid, default_grid)
    end

    # Asking for a current cell using x,y coordinate system
    # and filling by the value
    def set_cell(x,y, value)
      get_cell(x,y).value = value
    end

    # Asking for a current Cell using x,y coordinate system
    def get_cell(x, y)
      grid[y][x]
    end

    # Access the grid and return
    #   1. :winner - if there is a winner of the game
    #   2. :draw - if the game ended in a tie
    #   3. false - if the game is still being played
    def game_over
      return :winner if winner?
      return :draw if draw?
      false
    end

    private

    def winner?
      winning_positions.each do |winning_position|
        next if winning_position_values(winning_position).all_empty?
        return true if winning_position_values(winning_position).all_same?
      end
      false
    end

    def draw?
      grid.flatten.map { |cell| cell.value }.none_empty?
    end

    def winning_position_values(winning_position)
      winning_position.map { |cell| cell.value }
    end

    def winning_positions
      grid + # rows
      grid.transpose + # columns
      diagonals # two diagonals
    end

    def diagonals
      [
        [get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
        [get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)]
      ]
    end

    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end
  end
end
