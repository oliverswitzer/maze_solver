require './maze'
require './point'
require './spec_helper'

describe "Maze" do
  
  let(:maze) {Maze.new}

  it "should store a maze pattern from a text file in a two dimensional array" do
    maze.make
    maze.graph[0][0].should == "#"
    maze.graph[1][1].should == " "
  end

  it "should" 

end

describe "Point" do 

  let(:maze) {Maze.new}
  let(:point) {Point.new(maze, 0, 3)}

  it "should belong to a maze" do
    point.maze.object_id.should == maze
  end

  it "should have an x and y coordinate" do
    point.x.class.should == Integer
    point.y.class.should == Integer
  end

  it "should be a wall or a space" do
    e.type.should == "space"
  end

end

