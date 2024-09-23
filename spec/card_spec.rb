class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # an example group
  before do # hook, same as before(:example)
    @card = Card.new('Ace', 'Spades') # instance variable to persist
  end

  it 'has a rank' do # an example
    expect(@card.rank).to eq('Ace') # an assertion
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Spades')
  end
end
