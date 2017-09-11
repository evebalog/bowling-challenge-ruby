class Game

  attr_reader :first_roll_in_frame

  def initialize
    @first_roll_in_frame = 0
  end

  def pins(rolls)
    @rolls = rolls
  end

  def score
    frame = 0
    score = 0

    while frame < 10
      if spare?
        score += 10 + bonus_for_spare
        @first_roll_in_frame += 2
      elsif strike?
        score += 10 + bonus_for_strike
        @first_roll_in_frame += 1
      else
        score += standard_score
        @first_roll_in_frame += 2
      end

      frame += 1
    end

    score
  end

  private

  def strike?
    @rolls[first_roll_in_frame] == 10
  end

  def spare?
    @rolls[first_roll_in_frame] + @rolls[first_roll_in_frame + 1] == 10
  end

  def bonus_for_strike
    @rolls[first_roll_in_frame + 1] + @rolls[first_roll_in_frame + 2]
  end

  def bonus_for_spare
    @rolls[first_roll_in_frame + 2]
  end

  def standard_score
    @rolls[first_roll_in_frame] + @rolls[first_roll_in_frame + 1]
  end

end
