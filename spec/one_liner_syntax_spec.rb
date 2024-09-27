RSpec.describe 'shorthand syntax' do
  subject { 7 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq 7
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq 7 } # only available on the subject
  end
end
