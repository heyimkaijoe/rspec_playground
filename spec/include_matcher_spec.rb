RSpec.describe 'include_matcher' do
  context 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include 'hot'
      expect(subject).to include 'choco'
      expect(subject).to include 'late'
    end

    it { is_expected.to include 't c' }
  end

  context [23, 46, 69] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include 46, 23
      expect(subject).to include 69, 46
    end

    it { is_expected.to include 23, 69 }
  end

  context ({ a: 2, b: 3 }) do
    it 'can check for key inclusion' do
      expect(subject).to include :b, :a
    end

    it 'can check for key-value pairs' do
      expect(subject).to include b: 3, a: 2
    end

    it { is_expected.to include :b, :a }
    it { is_expected.to include b: 3, a: 2 }
  end
end
