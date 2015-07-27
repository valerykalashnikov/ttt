module TTT
  ##
  # class is to manage the moves and turns of the players
  class Game
    attr_reader :players, :board, :current_player, :other_player

    # initialized with an array of two players and a board
    # and randomly sets the @current_player and @other_player instance variables
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = @players.shuffle
    end

    # alternate user on every turn.
    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    # takes a “human_move” which is a number between 1 and 9, returns an [x, y] coordinate
    def get_move(human_move)
      human_move_to_coordinate(human_move)
    end

    # 1 2 3<br>
    # 4 5 6<br>
    # 7 8 9<br>
    # mapping from human moves which is a
    # number between 1 and 9 to [x,y] coordinate
    def human_move_to_coordinate(human_move)
      mapping = {
        "1" => [0, 0],
        "2" => [1, 0],
        "3" => [2, 0],
        "4" => [0, 1],
        "5" => [1, 1],
        "6" => [2, 1],
        "7" => [0, 2],
        "8" => [1, 2],
        "9" => [2, 2]
      }
      mapping[human_move]
    end
  end
end
