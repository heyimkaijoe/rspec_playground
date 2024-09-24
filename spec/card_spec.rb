class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # an example group
  # helper method
  def card
    Card.new('Ace', 'Spades')
  end

  it 'has a rank' do # an example
    expect(card.rank).to eq('Ace') # an assertion
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades') # same attributes but different object (different memory) in every example
  end
end
