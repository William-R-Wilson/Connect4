require 'rspec'
require 'board'

describe "Board" do
  before(:each) do
    @board = Board.new(height: 6, length: 7)
  end


  it "has a length of 7 and a height of 6" do
    expect(@board.length).to eq 7
    expect(@board.height).to eq 6
  end

  it "places tokens on the board" do
    @board.drop(1,"x")
    expect(@board.grid[5][0]).to eq "x"
  end

  it "stacks tokens on top of each other" do
    @board.drop(1, "x")
    @board.drop(1, "x")
    expect(@board.grid[5][0]).to eq "x"
    expect(@board.grid[4][0]).to eq "x"
  end

  it "draws the board" do
    example_rendering  =<<EOF
+---+---+---+---+---+---+---+
| 1 | 2 | 3 | 4 | 5 | 6 | 7 |
+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+
+---+---+---+---+---+---+---+
EOF

    expect(@board.render).to eq(example_rendering)
  end

  it "renders dropped tokens vertically" do
    example_rendering  =<<EOF
+---+---+---+---+---+---+---+
| 1 | 2 | 3 | 4 | 5 | 6 | 7 |
+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+

+---+---+---+---+---+---+---+
|   |   |   |   |   | X |   |
+---+---+---+---+---+---+---+
|   |   |   |   |   | O |   |
+---+---+---+---+---+---+---+
|   |   |   |   |   | X |   |
+---+---+---+---+---+---+---+
+---+---+---+---+---+---+---+
EOF

    @board.drop(6,"X")
    @board.drop(6,"O")
    @board.drop(6,"X")
    expect(@board.render).to eq(example_rendering)
  end

  it "raises an error if player gives invalid input" do
    expect{@board.drop(9, "x")}.to raise_error(ArgumentError)
    expect{@board.drop("a", "x")}.to raise_error(ArgumentError)
  end
  
  it "raises an error if player enters a number out of range" do
    pending "Will finishes this test"
    pass
  end
  





  # it "can place and find things on the board" do
  #   board = Board.new
  #   board.grid[0][6] = "X"
  #   expect(board.grid[0][6]).to eq "X"
  # end


  #it "can find things on the board" do
  #end
end


