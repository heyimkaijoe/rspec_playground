class Person
  def a(seconds)
    sleep seconds
    'Hello'
  end
end

RSpec.describe Person do
  context 'regular double' do
    it 'can implement any method' do
      person = double a: 'Hello', b: 'World'
      expect(person.a).to eq 'Hello'
    end
  end

  context 'instance double' do
    it 'can implement methods that are defined on the class' do
      # person = instance_double Person, a: 'Hello', b: 'World'
      person = instance_double Person
      allow(person).to receive(:a).with(2).and_return 'Hello'

      expect(person.a(2)).to eq 'Hello'
    end
  end
end
