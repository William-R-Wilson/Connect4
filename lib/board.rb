require 'terminal-table'
#require_relative "game.rb"

class Board
  require 'pry'
  attr_accessor :grid
  attr_reader :height, :length

  def initialize(args)
    @length = args[:length]
    @height = args[:height]
    @grid = Array.new(@height) { Array.new(@length, "") }

  end


  def drop(slot, token)
    valid_range = (1..@length).to_a
    raise ArgumentError if !valid_range.include?(slot)

   i = @height
	 until i == 0
	  if @grid[i-1][slot-1] == ""
		  @grid[i-1][slot-1] = token
		  break
		else
		  i -= 1
	  end
	 end
  end


  def last_empty(actual_column, token)
    i = @height
    puts i.class
    actual_column.each do
      if actual_column[i] == ""
        actual_column[i] = token
      else
        i - 1
      end
    end
  end

  def render
    representation = []
    @grid.each do |e|
      representation << e
      representation << :separator
    end
    drawing = Terminal::Table.new :headings => ['1', '2', '3', '4', '5', '6', '7'], :rows => representation
    drawing.to_s+"\n"
  end

end







