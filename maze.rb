require 'debugger'
require './point'


class Maze

  attr_accessor :graph, :file, :point_graph

  def initialize(file="maze_text.txt")
    @graph = []
    @file = file
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



