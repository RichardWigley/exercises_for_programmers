require 'test_helper'
require 'calculator'

describe Calculator do
  describe '#years_left' do
    it 'calculates a standard retirement' do
      calculator = Calculator.new age: 40, retirement_age: 70
      calculator.years_left.must_equal 30
    end
  end

  describe '#retire_in' do
    it 'calculates a standard year' do
      calculator = Calculator.new age: 40, retirement_age: 70
      calculator.retire_in(2010).must_equal 2040
    end
  end

  describe '#year' do
    it 'knows the year' do
      calculator = Calculator.new age: 40, retirement_age: 70
      calculator.year(2010).must_equal 2010
    end
  end
end
