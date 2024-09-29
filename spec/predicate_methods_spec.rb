RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 15 / 3
    expect(result.odd?).to eq true
    expect(result.even?).to eq false
  end

  it 'can be tested with predicate matchers' do
    expect(15 / 3).not_to be_even # dynamically generated method utilizing meta programming
    expect(15 / 3).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end
end
