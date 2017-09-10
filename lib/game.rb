class Game
  attr_reader :score

  def pins(rolls)
    @score = rolls.inject(:+)
  end

end
