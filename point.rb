require './maze'

class Point

  attr_accessor :x, :y, :type, :maze

  def initialize(maze, x, y, type)
    @maze = maze
    @type = type
    @x = x
    @y = y
  end

end
