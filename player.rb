class Player 
  
  attr_accessor :lives, :name, :points

  def initialize(name)
    @name = name
    @lives = 3
    @points = 0
  end

  def dead
    @lives == 0
  end
end
