RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_element_array = double # [2, 3, 5]

    allow(three_element_array).to receive(:first).with(no_args).and_return 2
    allow(three_element_array).to receive(:first).with(0).and_return []
    allow(three_element_array).to receive(:first).with(1).and_return [2]
    allow(three_element_array).to receive(:first).with(2).and_return [2, 3]
    allow(three_element_array).to receive(:first).with(be > 2).and_return [2, 3, 5]

    expect(three_element_array.first).to eq 2
    expect(three_element_array.first(0)).to eq []
    expect(three_element_array.first(1)).to eq [2]
    expect(three_element_array.first(2)).to eq [2, 3]
    expect(three_element_array.first(3)).to eq [2, 3, 5]
    expect(three_element_array.first(94)).to eq [2, 3, 5]
  end
end
