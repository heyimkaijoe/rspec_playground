RSpec.describe Hash do
  # Providing the class, RSpec does this behind the scenes:
    # let(:subject) { Hash.new }
    # -> instantiate an instance of the class and assign it to the helper method called 'subject' which is lazily available
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'some value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
