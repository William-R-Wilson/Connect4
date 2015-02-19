
class Board
  require 'pry'
  attr_accessor :grid
  attr_reader :height, :length

  def initialize(args)
    @length = args[:length]
    @height = args[:height]
    @grid = Array.new(@length) { Array.new(@height, "") }
  end

  def drop(column, token)

    actual_column = column - 1
    row = last_empty(actual_column)
    # binding.pry
    @grid[actual_column][row] = token

  end

  def last_empty(actual_column)
    last_empty_index = 0
    binding.pry

    @grid[actual_column].to_enum.with_index.reverse_each do |e, i|
      if e == ""
        last_empty_index = i
        break
      end
    end
    last_empty_index
  end


end

# board = Board.new({height: 6, length: 7})
# puts board.grid.drop(1, "x")

