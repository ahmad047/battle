# frozen_string_literal: true

require 'game'

describe Game do
  let(:muhammad)       { double('Player') }
  let(:abdur)          { double('Player') }

  describe '#attack' do
    it { is_expected.to respond_to(:attack).with(1).arguments }

    it 'damage the player' do
      expect(abdur).to receive(:receive_damage)
      subject.attack(abdur)
    end
  end
end
