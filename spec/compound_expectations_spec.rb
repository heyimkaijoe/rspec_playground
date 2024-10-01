RSpec.describe 'compound expectations' do
  context 12 do
    it 'can test for multi matchers' do
      # expect(subject).to be_even
      # expect(subject).to be > 10
      expect(subject).to be_even.and be > 10
    end

    it { is_expected.to be_even.and be < 20 }
  end

  context 'caterpillar' do
    it 'supports multi matchers on a single line' do
      expect(subject).to start_with('cat').and end_with('lar')
    end

    it { is_expected.to start_with('cater').and end_with('pillar') }
  end

  context [:taiwan, :japan, :vietnam] do
    it 'can check for multi possibilities' do
      expect(subject.sample).to eq(:japan).or eq(:vietnam).or eq(:taiwan)
    end
  end
end
