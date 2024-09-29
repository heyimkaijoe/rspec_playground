RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  context 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq 3
      expect(b).to eq 3.0
      expect(a).to eq b
    end
  end

  context 'eql matcher' do
    it 'tests for value and type (class)' do
      expect(a).not_to eql 3
      expect(b).not_to eql 3.0
      expect(a).to eql 3.0
      expect(b).to eql 3
      expect(a).not_to eql b
    end
  end
end
