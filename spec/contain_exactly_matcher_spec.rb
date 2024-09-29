RSpec.describe 'contain_exactly matcher' do
  subject { %w[a b c] }

  context 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly 'a', 'b', 'c'
      expect(subject).to contain_exactly 'c', 'a', 'b'
      # expect(subject).to contain_exactly 'c', 'a', 'b', 'd' --- would fail
    end
  end

  context 'one-liner syntax' do
    it { is_expected.to contain_exactly 'a', 'c', 'b' }
  end
end
