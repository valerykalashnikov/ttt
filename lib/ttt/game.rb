module TTT
  class Game
    attr_reader :players, :board, :current_player, :other_player
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = @players.shuffle
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def get_move(human_move)
      human_move_to_coordinate(human_move)
    end

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
