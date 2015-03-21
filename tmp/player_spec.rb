require "board.rb"
require "rspec"
require "player.rb"


  describe "Player" do
    it "returns a token" do
    player1 = Player.new("x")
    expect(player1.token).to eq("x")
  end
end
