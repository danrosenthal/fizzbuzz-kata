require 'spec_helper'
require 'fizzbuzz'

describe Game do
  context "when initiated without arguments creates an array of numbers" do
    it "from 1 to 100" do
      game = Game.new
      expect(game.numbers.length).to eq(100)
    end
  end
  
  context "when initiated with arguments creates an array of numbers" do
    it "starting with argument_1" do
      game = Game.new(20,80)
      expect(game.numbers.min).to eq(20)
    end
    it "ending with argument_2" do
      game = Game.new(20,80)
      expect(game.numbers.max).to eq(80)
    end
  end
  
  context "when we fizz numbers" do
    it "replaces 3 with fizz" do
      game = Game.new
      expect(game.numbers_fizzed[2]).to eq("fizz")
    end
  end
  
  context "when we buzz numbers" do
    it "replaces 5 with buzz" do
      game = Game.new
      expect(game.numbers_buzzed[4]).to eq("buzz")
    end
  end
  
  context "when we fizzbuzz numbers" do
    it "replaces 15 with fizzbuzz" do
      game = Game.new
      expect(game.numbers_fizzbuzzed[14]).to eq("fizzbuzz")
    end
  end
  
  context "when we fizz, buzz, and fizzbuzz numbers" do
    it "replaces 3 with fizz" do
      game = Game.new
      expect(game.numbers_fizzbuzzbuzzed[2]).to eq("fizz")
    end
    it "replaces 5 with buzz" do
      game = Game.new
      expect(game.numbers_fizzbuzzbuzzed[4]).to eq("buzz")
    end
    it "replaces 15 with fizzbuzz" do
      game = Game.new
      expect(game.numbers_fizzbuzzbuzzed[14]).to eq("fizzbuzz")
    end
  end
  
end