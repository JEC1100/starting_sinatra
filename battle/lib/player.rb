class Player 
  attr_reader :name
  attr_reader :hit_points
  DEFAULT_HIT_POINTS = 900

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hit_points -= 10
  end
end

