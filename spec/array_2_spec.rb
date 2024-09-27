RSpec.describe Array do
  subject(:sally) { [ 25, 'Chile' ] }

  it 'has two elements originally' do
    expect(subject.length).to eq 2
    subject.pop
    expect(subject.length).to eq 1
  end

  it 'has an alias to helper method "subject"' do
    expect(sally).to eq [ 25, 'Chile']
  end
end
