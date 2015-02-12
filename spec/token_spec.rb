require 'pry'
require 'rspec'
require 'token'

describe 'token' do
  it "knows which user placed it" do
    @test_token = Token.new("Player 1")
    expect(@test_token.player).to eq("Player 1")
  end
end
