require 'spec_helper'
require 'fizzbuzz'

describe Game do
  context "when passing 3" do
    it "returns Fizz" do
      expect(subject.check(3)).to eq("Fizz")
    end
  end
  
  context "when passing 5" do
    it "returns Buzz" do
      expect(subject.check(5)).to eq("Buzz")
    end
  end
  
  context "when passing 15" do
    it "returns FizzBuzz" do
      expect(subject.check(15)).to eq("FizzBuzz")
    end
  end
  
  context "when passing 4" do
    it "returns 4" do
      expect(subject.check(4)).to eq(4)
    end
  end
end

