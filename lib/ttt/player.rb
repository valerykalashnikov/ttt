module TTT
  class Player
    attr_reader :mark, :name
    def initialize params
      @mark = params.fetch(:mark)
      @name = params.fetch(:name)
    end
  end
end
