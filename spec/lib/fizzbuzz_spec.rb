require 'spec_helper'
require 'fizzbuzz'

describe Game do
  context "when initiated without arguments" do
    it "makes an array from 1 to 100" do
      expect(subject.numbers_mapped.length).to eq(100)
    end
  end
  
  context "when we fizz numbers" do
    it "replaces 3 with fizz" do
      expect(subject.numbers_mapped[2]).to eq("fizz")
    end
  end
  
  context "when we buzz numbers" do
    it "replaces 5 with buzz" do
      expect(subject.numbers_mapped[4]).to eq("buzz")
    end
  end
  
  context "when we fizzbuzz numbers" do
    it "replaces 15 with fizzbuzz" do
      expect(subject.numbers_mapped[14]).to eq("fizzbuzz")
    end
  end
  
  context "when we boom numbers" do
    it "replaces 12 with boom" do
      expect(subject.numbers_mapped[11]).to eq("boom")
    end
  end
  
end