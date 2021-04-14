require 'player'

describe Player do
  subject(:muhammad)       { described_class.new('muhammad') }
  subject(:abdur)          { described_class.new('abdur') }
  let(:default_hp)         { described_class::DEFAULT_HP }
  let(:minimum_damage)     { described_class::MINIMUM_DAMAGE }

  describe '#name' do
    it 'has a name assigned to it' do
      expect(muhammad.name).to eq('muhammad')
    end
  end

  describe '#hit_point' do
    it 'each player has 60 points by default' do 
      expect(muhammad.hit_points).to eq(default_hp)
    end
  end

  describe '#receive_damage' do
    it 'reduces own hit points when attacked' do
      expect { muhammad.receive_damage }.to change { muhammad.hit_points }.by(-minimum_damage)
    end
  end

  describe '#attack' do
    it 'reduces the HP of player 2 after attack by player 1' do
      expect{ muhammad.attack(abdur) }.to change { abdur.hit_points }.by(-minimum_damage)
    end
  end
end

