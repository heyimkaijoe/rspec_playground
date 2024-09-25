class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # an example group
  # helper method 'let'
    # separation between different examples
    # memoization(cache) in the example
    # lazy loading
      # use let! instead to have eager loading
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do # an example
    expect(card.rank).to eq('Ace') # an assertion
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "#{comparison} expected, but I got #{card.suit} instead" # custom error message
  end
end
