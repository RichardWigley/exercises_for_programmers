require 'test_helper'
require 'number'

#
# number? is a wrapper to a system function call
# no point testing something ruby specs already tests
#
describe 'number' do
  it 'returns true for a number' do
    number?('3').must_equal true
  end

  it 'returns false for not a number' do
    number?('x').must_equal false
  end
end
