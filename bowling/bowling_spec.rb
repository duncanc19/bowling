require_relative 'bowling'
require 'rspec'

include RSpec

describe "bowling" do
  context "convert string to array" do
    it "parses string" do
      expect(Bowling.new.to_array("X X")).to eq(["X", "X"])
    end
  end

  context "add ints in array" do
    it "adds integer pairs together" do
      expect(Bowling.new.add_pairs(["13", "42"])).to eq([4, 6])
    end
  end

end

#   context "instance method example" do
#     it "multiplies correctly" do
#       expect(Hiker.new.instance_answer).to eq(42)
#     end
#   end

