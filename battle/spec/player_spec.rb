require 'player'

describe Player do
  subject(:yoda) { Player.new('Yoda') }
  subject(:et) { Player.new('ET') }

  describe '#name' do
    it 'returns player name' do
      expect(yoda.name).to eq 'Yoda'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(subject.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { yoda.receive_damage }.to change { yoda.hit_points }.by(-10)
    end
  end
end


