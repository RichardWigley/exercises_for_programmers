require 'test_helper'
require 'convert'

describe Convert do
  describe '#transfer_amount' do
    it 'converts between currencies' do
      Convert.new(from: 5, to: 2).transfer_amount(1)
        .must_equal 2.50
    end

    it 'converts fractions of a penny up to a whole penny' do
      Convert.new(from: 5, to: 2).transfer_amount(1.0001)
        .must_equal 2.51
    end

    it 'converts fractions of a penny up to a whole penny' do
      Convert.new(from: 1.52, to: 1).transfer_amount(1.00)
        .must_equal 1.52
    end

    # Added a conversion which I knew approximately
    #  - demonstrates a float issue where the imprecision of float representation
    #    151.52 * 100 = 15152000002 which ceil to 15253
    #    see float.rb
    #
    it 'converts pounds to dollars' do
      Convert.new(from: 1.5152, to: 1).transfer_amount(100)
        .must_equal 151.53
    end
  end

  describe '#exchange_rate' do
    it 'calculates the rate' do
      Convert.new(from: 0.89301, to: 1).exchange_rate
        .must_equal 89.31
    end
  end
end
