require 'player'

describe Player do
  subject(:yoda) { Player.new('Yoda') }

  describe '#name' do
    it 'returns name' do
      expect(yoda.name).to eq 'Yoda'
    end
  end
end
