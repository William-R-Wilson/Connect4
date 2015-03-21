#require "board.rb"
require "rspec"
#require_relative "player"
require "game"


describe "Game" do
  

    
  it "asks for the player's names" do
  
  end
  
  
  it "is not won at the outset" do
    game = Game.new
    expect(game.won?).to eq(false)
  end

  it "is won with 4 in a row vertically" do
    game = Game.new
    game.board.drop(6,"X")
    game.board.drop(6,"X")
    game.board.drop(6,"X")
    game.board.drop(6,"X")
    expect(game.won?).to eq(true)
  end

  it "is won with 4 in a row horizontally" do
    game = Game.new
    game.board.drop(1,"X")
    game.board.drop(2,"X")
    game.board.drop(3,"X")
    game.board.drop(4,"X")
    expect(game.won?).to eq(true)
  end




end

