module TTT

  ##
  # Cell class that simply keeps track of a cell’s value
  class Cell
    # value containing player's mark
    attr_accessor :value

    ##
    # Creates a new cell with +value+.
    #
    # params:
    #   value - player's mark or empty(by default)
    def initialize(value="")
      @value = value
    end
  end
end
