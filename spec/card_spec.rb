class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe Card do # an example group
  it 'has a type' do # an example
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades') # an assertion
  end
end
