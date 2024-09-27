RSpec.describe '#even? method' do
  describe 'with even number' do # nested describe
    it 'should return true' do
      expect(8.even?).to eq(true)
    end
  end

  context 'with odd number' do # context: identical to describe behind the scenes
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
