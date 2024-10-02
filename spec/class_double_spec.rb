class Deck
  def self.build
    #  business logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined in a class' do
    deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const
    # method as_stubbed_const to replace real class with class double

    expect(deck_klass).to receive(:build).once
    subject.start
    expect(subject.cards).to eq %w[Ace Queen]
  end
end
