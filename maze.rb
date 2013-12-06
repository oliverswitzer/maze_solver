require 'debugger'


class Maze

  attr_accessor :graph, :file

  def initialize(file="maze_text.txt")
    @graph = []
    @file = file
  end

  def make
    File.open(@file, "r").each_line.with_index do |line, i|
      @graph << []
      line.each_char do |char|
        @graph[i] << char unless char == "\n"
      end
    end
  end

  def print_maze
    debugger
    @graph.each do |row|
      puts
      row.each do |char|
        print char
      end
    end
  end

end

maze = Maze.new
maze.make
maze.print_maze
