# frozen_string_literal: true

require 'game'

describe Game do
  let(:muhammad)       { double('Player', name: 'muhammad') }
  let(:abdur)          { double('Player', name: 'abdur') }
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
end
