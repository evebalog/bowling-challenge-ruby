require 'game'

describe Game do
  let(:game) {Game.new}
  it 'scores zero in a guttergame' do
    game.pins([0] * 20)
    expect(game.score).to eq 0
  end

  it 'scores 40 in the game' do
    game.pins([2] * 20)
    expect(game.score).to eq 40
  end
end
