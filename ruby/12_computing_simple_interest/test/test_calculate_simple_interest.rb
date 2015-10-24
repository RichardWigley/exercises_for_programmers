require 'test_helper'
require_relative '../lib/calculate_simple_interest'

describe 'calculate_simple_interest' do
  it 'calculates the expected interest for one year' do
    calculate_simple_interest(principal: 10, rate: 0.10, years: 1)
      .must_equal 11
  end

  it 'calculates the expected multiyear interest' do
    calculate_simple_interest(principal: 10, rate: 0.10, years: 2)
      .must_equal 12
  end
end
