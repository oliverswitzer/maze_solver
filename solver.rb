require './maze'

class Solver

  attr_accessor :graph

  def initialize
    maze = Maze.new 
    @graph = maze.graph
  end



  def neighbors
    
    graph.each do |y|
      graph.each do |x|
      if cell.alive?
        # Check for North neighbor
        if cell.x == self.x && cell.y == self.y + 1
          @neighbors << cell
        # Check for North East neighbor
        elsif cell.x == self.x + 1 && cell.y == self.y + 1
          @neighbors << cell
        # East neighbor
        elsif cell.x == self.x + 1 && cell.y == self.y
          @neighbors << cell
        # South East neighbor
        elsif cell.x == self.x + 1 && cell.y == self.y - 1
          @neighbors << cell
        # South neighbor
        elsif cell.x == self.x && cell.y == self.y - 1
          @neighbors << cell
        # South West neighbor
        elsif cell.x == self.x - 1 && cell.y == self.y - 1
          @neighbors << cell
        # West neighbor
        elsif cell.x == self.x - 1 && cell.y == self.y
          @neighbors << cell
        # North West nieghbor
        elsif cell.x == self.x - 1 && cell.y == self.y + 1
          @neighbors << cell
        end
      end
    end
    @neighbors
  end