require 'debugger'
require './point'


class Maze

  attr_accessor :graph, :file, :point_graph, :points

  def initialize(file="maze_text.txt")
    @graph = []
    @file = file
    @points = []
    pointify
  end

  def pointify
    File.open(@file, "r").each_line.with_index do |line, y|
      @graph << []
      line.each_char.with_index do |char, x|
        if char == " "
          @graph[y] << Point.new(self, x, y, "space")
        elsif char == "#"
          @graph[y] << Point.new(self, x, y, "wall")
        end
      end
    end
    graph[3][0].type = "mouse"
    graph[7][10].type = "end"
  end


  def print_maze
    @graph.each do |row|
      puts
      row.each do |point|
        if point.type == "space"
          print " "
        else
          print "#"
        end
      end
    end
  end

end



