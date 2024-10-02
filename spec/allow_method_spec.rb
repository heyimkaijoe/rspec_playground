RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return 10

    expect(calculator.add).to eq  10
    expect(calculator.add(3)).to eq  10
    expect(calculator.add(3, 5, 8)).to eq  10
    expect(calculator.add('hello')).to eq  10
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 3, 5]
    allow(arr).to receive(:sum).and_return 12 # overwrite existing method

    expect(arr.sum).to eq 12
    arr.push 7
    expect(arr).to eq [1, 3, 5, 7]
  end

  it 'can return multi return values in sequence' do
    mock_arr = double
    allow(mock_arr).to receive(:pop).and_return :z, :y, nil

    expect(mock_arr.pop).to eq :z
    expect(mock_arr.pop).to eq :y
    expect(mock_arr.pop).to be_nil
    expect(mock_arr.pop).to be_nil
  end
end
