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

  it 'scores a spare in a game' do
    game.pins([7,3,5] + [0] * 17)
    expect(game.score).to eq 20
  end

  it 'scores a strike' do
    game.pins([10,4,1] + [0] * 17)
    expect(game.score).to eq 20
  end

end
