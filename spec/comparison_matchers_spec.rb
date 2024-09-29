RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(420).to be > 200
    expect(420).to be >= 420

    expect('abc').to be < 'cde'
    expect('abc').to be <= 'abe'
  end

  context 420 do
    it { is_expected.to be > 250 }
    it { is_expected.to be >= 420 }

    it { is_expected.to be < 500 }
    it { is_expected.to be <= 420 }

    it { is_expected.not_to be > 420 }
  end
end
