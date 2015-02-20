require 'rspec'
require 'board'

describe "Board" do

  it "a length of 7 and a height of 6" do
    board = Board.new({height: 6,length: 7})
    expect(board.length).to eq 7
    expect(board.height).to eq 6
  end

  it "places tokens on the board" do
    board = Board.new({height: 6, length: 7})
    board.drop(1,"x")
    expect(board.grid[0][5]).to eq "x"
  end

  it "stacks tokens on top of each other" do
    board = Board.new({height: 6, length: 7})
    board.drop(1, "x")
    board.drop(1, "x")
    expect(board.grid[0][5]).to eq "x"
    expect(board.grid[0][4]).to eq "x"
  end
  
  it "draws the board" do
    board = Board.new({height: 6, length: 7})
    example_rendering  =<<EOF
+---+---+---+---+---+---+
| A | B | C | D | E | F |
+---+---+---+---+---+---+

+---+---+---+---+---+---+

+---+---+---+---+---+---+

+---+---+---+---+---+---+

+---+---+---+---+---+---+

+---+---+---+---+---+---+

+---+---+---+---+---+---+

+---+---+---+---+---+---+
+---+---+---+---+---+---+
EOF

  expect(board.render).to eq(example_rendering)  
end

  # it "can place and find things on the board" do
  #   board = Board.new
  #   board.grid[0][6] = "X"
  #   expect(board.grid[0][6]).to eq "X"
  # end


  #it "can find things on the board" do
  #end
end


