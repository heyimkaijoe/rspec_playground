class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car) { instance_double Car }
  before { allow(Car).to receive(:new).and_return(car) }

  it 'adds a car to its storage' do
    subject.add_to_collection('Honda Civic')

    expect(Car).to have_received(:new).with('Honda Civic')
    expect(subject.storage.length).to eq(1)
    expect(subject.storage.last).to eq(car)
  end
end
