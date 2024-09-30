class ProWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe "have_attributes matcher" do
  context ProWrestler.new('John Cena', 'Attitude Adjustment') do
    it 'checks for attributes and proper values' do
      expect(subject).to have_attributes name: 'John Cena', finishing_move: 'Attitude Adjustment'
    end

    it { is_expected.to have_attributes name: 'John Cena', finishing_move: 'Attitude Adjustment' }
  end
end
