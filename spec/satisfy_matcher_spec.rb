RSpec.describe 'satisfy_matcher' do
  subject { 'racecar' }
  # subject { 'racecars' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |str| str == str.reverse }
  end

  it 'can accept a custom failed assertion message clarifying business logic' do
    expect(subject).to satisfy('be a palindrome') do |str|
      str == str.reverse
    end
  end
end
