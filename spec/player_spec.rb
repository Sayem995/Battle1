require 'player'

describe Player do
  subject(:sayem) { Player.new('Sayem') }
  subject(:hisham) { Player.new('Hisham') }

  describe '#name' do
    it 'returns the name' do
      expect(sayem.name).to eq 'Sayem'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(sayem.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(hisham).to receive(:receive_damage)
      sayem.attack(hisham)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { sayem.receive_damage }.to change { sayem.hit_points }.by(-10)
    end
  end
 end
