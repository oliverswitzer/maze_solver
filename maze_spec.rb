require './maze'
require './point'
require './spec_helper'

describe "Maze" do
  
  let(:maze) {Maze.new}

  it "should store a maze pattern from a text file in a two dimensional array of point objects" do
    maze.graph[0][0].class.should == Point
    maze.graph[1][1].class.should == Point
  end

  it "each point in the maze should either be a wall or a space" do
    maze.graph[0][0].type.should == "wall"
    maze.graph[1][1].type.should == "space"
  end

end

describe "Point" do 

  let(:maze) {Maze.new}
  let(:point) {Point.new(maze, 0, 3, "space")}

  it "should belong to a maze" do
    point.maze.object_id.should == maze.object_id
  end

  it "should have an x and y coordinate" do
    point.x.class.should == Fixnum
    point.y.class.should == Fixnum
  end

  it "should be a wall or a space" do
    point.type.should == "space"
  end

end

