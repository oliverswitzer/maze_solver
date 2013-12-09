require './maze'

class Point

  attr_accessor :x, :y, :type, :maze, :graph, :possible_moves

  def initialize(maze, x, y, type)
    @maze = maze
    maze.points <<  self
    @graph = maze.graph
    @type = type
    @x = x
    @y = y
    @possible_moves = []
  end

  def mouse?
    if self.type == "mouse"
      return true
    else
      false
    end
  end


  def check_up
    if mouse?
      if graph[y+1][x].type == "space"
        true
      else
        false
      end
    else
      raise "This point is not a mouse!"
    end
  end

  def check_right
    if mouse?
      if graph[y][x+1].type == "space"
        true
      else
        false
      end
    else
      raise "This point is not a mouse!"
    end
  end

  def check_down
    if mouse?
      if graph[y-1][x].type == "space"
        true
      else
        false
      end
    else
      raise "This point is not a mouse!"
    end
  end

  def check_left
    if mouse?
      if graph[y][x-1].type == "space"
        true
      else
        false
      end
    else
      raise "This point is not a mouse!"
    end
  end

  def get_moves
    if mouse?
      possible_moves[0] = check_up
      possible_moves[1] = check_right
      possible_moves[2] = check_down
      possible_moves[3] = check_left
    else
      raise "This point is not a mouse!"
    end
  end

end
