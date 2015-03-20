
require_relative 'board.rb'
#require './player'


class Game
  require "pry"

  attr_accessor :player1, :player2, :board, :won

  def initialize
    @player1 = "X"
    @player2 = "O"
    @board = Board.new(height: 6, length: 7)
    @won = false
  end

  def won?
    @won
  end

  def get_name
    puts "enter player's name"
    print ">>"
    STDIN.gets.chomp
  end

  def commence
    current_player = @player1
    print @board.render
    until won? == true do
      puts "place your token #{current_player}"
      begin
      board.drop(STDIN.gets.chomp.to_i, current_player.to_s)
      rescue ArgumentError
      puts "Please enter a number between 1 and #{@board.length}"
      next
      end
      analyze_board
      print @board.render
      current_player = current_player == @player1 ? @player2 : @player1
    end
  end
  
  def analyze_board
    @board.grid.each do |row|
      a = row.join
      
      if a.include? "XXXX"
        @won = true
        puts "X Wins!"
        return @won
        
      elsif a.include? "OOOO"
        @won = true
        puts "O Wins!"
        return @won
      else
        @won = false
      end
    end
    
  end

end

=begin
game = Game.new
game.board.drop(1, "X")
game.board.drop(2, "X")
game.board.drop(3, "X")
game.board.drop(4, "X")
print game.board.render
game.analyze_board
=end