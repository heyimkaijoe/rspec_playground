# falsy values --- false, nil
# truthy values --- everything else

RSpec.describe 'be_matchers' do
  it 'can test for truthiness' do
    expect(3).to be_truthy
    expect(0).to be_truthy
    expect('hello').to be_truthy
    expect('').to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil). to be_nil
    expect(nil). to be nil

    my_hash = { a: 1, b: 2 }
    expect(my_hash[:c]).to be_nil
  end
end
