class Player
  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives.to_i
  end

  def lose_life
    self.lives = self.lives - 1
  end
end