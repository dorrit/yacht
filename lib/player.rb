class Player
  attr_reader :name, :total_points, :turns

  def initialize(name)
    @name = name
    @total_points = 0
    @turns = 0
  end

  def add_points(new_points)
    @total_points += new_points
  end

  def add_turn
    @turns += 1
  end
end