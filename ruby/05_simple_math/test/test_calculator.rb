require 'test_helper'
require 'calculator'

describe Calculator do
  it 'adds' do
    calculator = Calculator.new first: 1, second: 2

    calculator.add.must_equal '1 + 2 = 3'
  end

  it 'subtracts' do
    calculator = Calculator.new first: 1, second: 2

    calculator.subtract.must_equal '1 - 2 = -1'
  end

  it 'multiplies' do
    calculator = Calculator.new first: 1, second: 2

    calculator.multiply.must_equal '1 * 2 = 2'
  end

  it 'divides' do
    calculator = Calculator.new first: 1, second: 2

    calculator.divide.must_equal '1 / 2 = 0'
  end
end
