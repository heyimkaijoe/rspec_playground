RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  class CustomError < StandardError; end

  it 'checks for a specific error being raised' do
    expect { some_method }.to raise_error NameError
    expect { 1 / 0 }.to raise_error ZeroDivisionError
  end

  it 'checks for user-defined errors' do
    expect { raise CustomError }.to raise_error CustomError
  end
end
