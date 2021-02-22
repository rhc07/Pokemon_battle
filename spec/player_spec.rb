require 'player'

describe Player do
  subject(:pikachu) {Player.new('Pikachu')}
  subject(:bulbasaur) {Player.new('Bulbasaur')}


  describe '#name' do
    it 'returns the name' do
      expect(pikachu.name).to eq 'Pikachu'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(pikachu.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(bulbasaur).to receive(:receive_damage)
  #     pikachu.attack(bulbasaur)
  #   end
  # end
end
