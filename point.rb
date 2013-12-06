require './maze'

class Point

  attr_accessor :x, :y, :type

  def initialize(maze, x, y, type)
    @type = type
    @x = x
    @y = y
  end

end
