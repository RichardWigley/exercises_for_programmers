require 'test_helper'
require 'char_count'

describe CharCount do
  it 'calculates the length' do
    char_count = CharCount.new '12345'
    char_count.length.must_equal 5
  end
end
