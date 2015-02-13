class Board

attr_accessor :grid
attr_reader :height, :length

  def initialize(args)
    @length = args[:length]
    @height = args[:height]
    @grid = Array.new(@length, Array.new(@height))

    # @grid = [
    #   ["-","-","-","-","-","-","-"],
    #   ["-","-","-","-","-","-","-"],
    #   ["-","-","-","-","-","-","-"],
    #   ["-","-","-","-","-","-","-"],
    #   ["-","-","-","-","-","-","-"],
    #   ["-","-","-","-","-","-","-"],
    # ]
end

  # def length
  #   7
  # end

  # def height
  #   6
  # end

end
