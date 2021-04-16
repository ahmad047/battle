# frozen_string_literal: true

require 'game'

describe Game do
  let(:muhammad)       { double('Player', name: 'muhammad', hit_points: 60) }
  let(:abdur)          { double('Player', name: 'abdur', hit_points: 60) }
  let(:subject)        { described_class.new(muhammad, abdur) }

  it { is_expected.to be_an_instance_of(described_class) }

  describe '#attack' do
    it { is_expected.to respond_to(:attack).with(1).arguments }

    it 'damage the player' do
      expect(abdur).to receive(:receive_damage)
      subject.attack(abdur)
    end
  end

  describe '#switch_turn' do
    it 'changes the turn for player to go' do
      allow(abdur).to receive(:receive_damage)
      subject.attack(abdur)
      expect(subject.current_player.name).to eq(abdur.name)
    end
  end

  describe '#game_over' do
    it 'it finishes the game when a player reaches 0 HP' do
      allow(abdur).to receive(:receive_damage)
      allow(abdur).to receive(:hit_points).and_return(0)
      expect(subject.attack(abdur)).to eq('abdur loses')
    end
  end
end
