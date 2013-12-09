
require './solver'
require './spec_helper'
require './maze'

describe "Solver" do

  let(:solver) { Solver.new }
  let(:mouse) { solver.mouse }

  context "mouse utility methods" do

    it "the mouse should start from the starting position in the maze" do 
      mouse.x.should == 0
      mouse.y.should == 3
    end

    it "the mouse should know if it can go up" do 
      mouse.check_up.should be_false
    end

    it "the mouse should know if it can go right" do
      mouse.check_right.should be_true
    end

    it "the mouse should know if it can go down" do 
      mouse.check_down.should be_false
    end

    it "the mouse should know if it can go left" do
      mouse.check_left.should be_false
    end

    it "a mouse should have an array of moves it can make at any point" do
      mouse.get_moves
      mouse.possible_moves.should == [false, true, false, false]
    end

  end

end
