require 'rspec'
require 'board'

describe "Board" do

  it "a length of 6x7 places" do
    board = Board.new
    expect(board.grid.length).to eq 6
    expect(board.grid[1].length).to eq 7
  end
  #it "has a height of 6 places" do
  #   board = Board.new
   # expect(board.height).to eq 6
  #end

  it "you can place and find things on the board" do
    board = Board.new
    board.grid[0][6] = "X"
    expect(board.grid[0][6]).to eq "X"
  end
end
