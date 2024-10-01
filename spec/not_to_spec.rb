RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(10).not_to eq 8
    expect([0]).not_to equal [0]

    expect(12).not_to be_odd
    expect([0]).not_to be_empty
    expect(nil).not_to be_truthy

    expect('George').not_to start_with 'geo'
    expect('George').not_to end_with 'Ge'

    expect(5).not_to respond_to :length

    expect([:a, :b]).not_to include :c

    expect { 11 / 3 }.not_to raise_error
  end
end
