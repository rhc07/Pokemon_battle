require 'player'

describe Player do
  subject(:pikachu) {Player.new('Pikachu')}


  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq 'Pikachu'
    end
  end
end
