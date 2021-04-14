require 'player'

describe Player do
  subject(:muhammad) { described_class.new('muhammad') }

  it 'has a name assigned to it' do
    expect(muhammad.name).to eq('muhammad')
  end

end
