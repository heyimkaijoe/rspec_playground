RSpec.describe 'start_with and end_with matchers' do
  context 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with 'cater'
      expect(subject).to end_with 'pillar'

      expect(subject).not_to start_with 'Cat'
    end

    it { is_expected.to start_with 'cat' }
  end

  context [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with :a
      expect(subject).to start_with :a, :b
      expect(subject).to end_with :d
      expect(subject).to end_with :c, :d
    end

    it { is_expected.to start_with :a, :b, :c }
    it { is_expected.to end_with :b, :c, :d }
  end
end
