module TTT
  ##
  # Player class tracks a player’s name and if they are an X or O.
  class Player
    attr_reader :mark, :name

    # Instantiated with a hash and will raise an exception if the required keys are missing.
    # params:
    #   name - player's name
    #   mark - X or O
    # = Example
    #
    #   Player.new({mark: 'X', name 'Bob'})
    def initialize params
      @mark = params.fetch(:mark)
      @name = params.fetch(:name)
    end
  end
end
