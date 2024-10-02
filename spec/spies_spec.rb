RSpec.describe 'spies' do
  let(:animal) { spy 'animal' }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received :eat_food
    expect(animal).to_not have_received :attack_human
  end

  it 'resets between examples' do
    expect(animal).to_not have_received :eat_food
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food
    animal.eat_food('meat')

    expect(animal).to have_received(:eat_food).exactly(4).times
    expect(animal).to have_received(:eat_food).at_least(3).times

    expect(animal).to have_received(:eat_food).with('meat')
    expect(animal).to have_received(:eat_food).with('meat').once
    expect(animal).to have_received(:eat_food).once.with('meat')
  end
end
