require 'game'

describe Game do
  it 'scores zero in a guttergame' do
    game = Game.new
    game.pins([0] * 20)
    expect(game.score).to eq 0
  end
end
