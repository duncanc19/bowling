require_relative 'bowling'
require 'rspec'

include RSpec

describe "bowling" do
  context "convert string to array" do
    it "parses string" do
      expect(Bowling.new.to_array("X X X X X X X X X X")).to eq(["X", "X", "X", "X", "X", "X", "X", "X", "X", "X"])
    end
  end

  context "create sub-arrays" do
    it "makes sub arrays" do
      expect(Bowling.new.to_subarray(["13", "72", "42"])).to eq([["1","3"], ["7", "2"], ["4","2"]])
    end
  end

  context "add two numbers" do
    it "adds two rolls together when both numbers" do
      expect(Bowling.new.add_pairs([["1","3"]])).to eq([4])
      expect(Bowling.new.add_pairs([["1","3"], ["7", "2"], ["4","2"]])).to eq([4, 9, 6])
    end
  end

  context "check for spare" do
    it "checks for spares and converts to single slash" do
      expect(Bowling.new.add_pairs([["1", "/"]])).to eq(["/"])
      expect(Bowling.new.add_pairs([["1", "/"], ["5", "/"]])).to eq(["/", "/"])
      expect(Bowling.new.add_pairs([["1", "/"], ["5", "2"], ["3", "/"]])).to eq(["/", 7, "/"])
    end
  end

  context "check for strike" do
    it "checks for strikes and converts to 'X'" do
      expect(Bowling.new.add_pairs([["X"]])).to eq(["X"])
      expect(Bowling.new.add_pairs([["1", "/"], ["X"]])).to eq(["/", "X"])
      expect(Bowling.new.add_pairs([["1", "/"], ["5", "2"], ["X"]])).to eq(["/", 7, "X"])
    end
  end




# context "add ints in array" do
#   it "adds integer pairs together" do
#     expect(Bowling.new.add_pairs(["13", "42"])).to eq([4, 6])
#   end
# end

end

#   context "instance method example" do
#     it "multiplies correctly" do
#       expect(Hiker.new.instance_answer).to eq(42)
#     end
#   end

