
require_relative 'board.rb'
#require './player'


class Game

  attr_accessor :player1, :player2, :board

  def initialize
    @player1 = "X"
    @player2 = "O"
    @board = Board.new(height: 6, length: 7) 
    commence
  end

  def won?
    false
  end

  def get_name
    puts "enter player's name"
    print ">>"
    STDIN.gets.chomp
  end

  def commence
    current_player = @player1
    while !won? do
      print @board.render
      puts "place your token #{current_player}"
      board.drop(STDIN.gets.chomp.to_i, current_player.to_s)
      current_player = current_player == @player1 ? @player2 : @player1
    end
  end
end


