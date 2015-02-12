require 'spec_helper'
require 'fizzbuzz'

describe Game do
  context "when initiated Game creates an array of numbers" do
    it "makes an array up to 100 without arguments" do
      game = Game.new
      expect(game.stuff.length).to be == 100
    end
    it "makes an array from 20 to 80 with arguments" do
      game = Game.new(20,80)
      expect(game.stuff.length).to be == 80
    end
  end
end