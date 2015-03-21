
require_relative 'board'
#require './player'
require_relative 'GameLogic'


class Game
  
  include GameLogic
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
    until won? == true do
      print @board.render
      puts "place your token #{current_player}"
      begin
      board.drop(STDIN.gets.chomp.to_i, current_player.to_s)
      rescue ArgumentError
      puts "Please enter a number between 1 and #{@board.length}"
      next
      end
      analyze_board
      current_player = current_player == @player1 ? @player2 : @player1
    end
    ask_to_finish
    
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