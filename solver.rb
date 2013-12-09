require './maze'

class Solver

  attr_accessor :graph, :mouse, :maze

  def initialize
    @maze = Maze.new 
    @graph = maze.graph
    @mouse = maze.points.detect {|point| point.type == 'mouse'}
    @end = maze.points.detect {|point| point.type == "end"}
  end

end