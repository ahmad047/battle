# frozen_string_literal: true

require 'game'

describe Game do
  let(:muhammad)       { double('Player') }
  let(:abdur)          { double('Player') }
  let(:subject)        { described_class.new(muhammad, abdur) }

  it { is_expected.to be_an_instance_of(described_class) }
  
  describe '#attack' do
    it { is_expected.to respond_to(:attack).with(1).arguments }

    it 'damage the player' do
      expect(abdur).to receive(:receive_damage)
      subject.attack(abdur)
    end
  end
end
