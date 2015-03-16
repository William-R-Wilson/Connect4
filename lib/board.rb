require 'terminal-table'
#require_relative "game.rb"

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
    actual_column = (column.to_i - 1)
    row = last_empty(actual_column)
    @grid[actual_column][row] = token
  end


  def last_empty(actual_column)
    last_empty_index = 0
    @grid[actual_column].reverse_each_with_index do |e, i|
      if e == ""
        last_empty_index = i
        break
      end
    end
    last_empty_index
  end

  def render
    representation = []
    @grid.each do |e|
      representation << e
      representation << :separator
    end
    drawing = Terminal::Table.new :headings => ['1', '2', '3', '4', '5', '6'], :rows => representation
    drawing.to_s+"\n"
  end

end




class Array

  def reverse_each_with_index &block
    to_enum.with_index.reverse_each &block
  end
end


#testing code creates a board and renders to stdout
#board = Board.new({height: 6, length: 7})
#puts board.render
