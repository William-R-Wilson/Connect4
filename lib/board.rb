class Board

attr_accessor :grid
attr_reader :height, :length

  def initialize(args)
    @length = args[:length]
    @height = args[:height]
    @grid = Array.new(@length) { Array.new(@height, "-") }
  end




end

b = Board.new(height: 6, length: 7)
print b.grid