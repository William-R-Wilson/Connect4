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
  binding.pry
  actual_column = column -1
  last_empty(actual_column)
  @grid[actual_column][last_empty] = token

end
def last_empty(actual_column)
  @grid[actual_column].each_index do |i|
  @grid[i][actual_column].empty? ? i : next
 end
end


end

b = Board.new(height: 6, length: 7)
print b.grid
