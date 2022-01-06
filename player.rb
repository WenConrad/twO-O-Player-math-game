class Player
  attr_accessor :score
  attr_reader :name

  def initialize(name)
    @name = name
    @score = 3
  end

  def incorrect
    self.score -= 1
  end

  def player_score
    "#{self.name}: #{self.score}/3"
  end

  def to_s
    self.name
  end
end