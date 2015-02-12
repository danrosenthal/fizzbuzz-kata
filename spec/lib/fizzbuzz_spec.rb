require 'spec_helper'
require 'fizzbuzz'

describe Game do
  context "when initiated Game creates an array of numbers" do
    it "makes an array up to 100 without arguments" do
      game = Game.new
      expect(game.stuff.length).to be == 100
    end
    it "makes an array from argument 1 to argument 2 with arguments" do
      game = Game.new(20,80)
      expect(game.stuff.min).to be == 20
      expect(game.stuff.max).to be == 80
    end
  end
  
  context "when we fizz the stuff array" do
    it "should have numbers divisible by three replaced with fizz" do
      game = Game.new
      expect(game.stuff[2]).to be == "fizz"
    end
  end
end