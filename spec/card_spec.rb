class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # an example group
  it 'has a rank' do # an example
    card = Card.new('Ace', 'Spades') # <- duplication
    expect(card.rank).to eq('Ace') # an assertion
  end

  it 'has a suit' do
    card = Card.new('Ace', 'Spades') # <- duplication
    expect(card.suit).to eq('Spades')
  end
end
