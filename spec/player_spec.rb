require 'player'

describe Player do
  subject(:Sayem) { Player.new('Sayem') }

  describe '#name' do
    it 'returns the name' do
      expect(Sayem.name).to eq 'Sayem'
    end 
  end
end
