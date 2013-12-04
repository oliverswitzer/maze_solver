require '../maze'
require './spec_helper'

describe "maze" do
  
  let(:maze) {Maze.new}

  it "should store a maze pattern from a text file in a two dimensional array" do
    maze.make
    maze.graph[0][0].should == "#"
    maze.graph[1][1].should == " "
  end

end
