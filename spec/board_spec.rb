require 'rspec'
require 'board'

describe "Board" do

  it "a length of 7 and a height of 6" do
    board = Board.new({height: 6,length: 7})
    expect(board.length).to eq 7
    expect(board.height).to eq 6
  end

  # it "you can place and find things on the board" do
  #   board = Board.new
  #   board.grid[0][6] = "X"
  #   expect(board.grid[0][6]).to eq "X"
  # end
end
