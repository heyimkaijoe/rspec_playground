RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [4, 6, 8].each do |num|
    #   expect(num).to be_even
    # end

    expect([3, 5, 7]).to all be_odd
    expect([4, 6, 8]).to all be_even
    expect([0, 0, 0]).to all be_zero
    expect([[], [], []]).to all be_empty
    expect([3, 4, 8, 9]).to all be < 10
  end

  context [3, 5, 7] do
    it { is_expected.to all be_odd }
    it { is_expected.to all be < 8 }
  end
end
