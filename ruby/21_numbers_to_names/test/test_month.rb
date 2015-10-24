require 'test_helper'
require 'month'

describe 'month' do
  it 'returns the name of the first month' do
    month_name(1).must_equal 'January'
  end

  it 'returns the name of the last month' do
    month_name(12).must_equal 'December'
  end

  it 'returns the name of a month by language' do
    month_name(1, language: :sp).must_equal 'enero'
  end
end
