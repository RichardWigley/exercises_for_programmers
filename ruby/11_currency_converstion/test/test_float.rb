require 'test_helper'
require 'float'

describe Float do
  it 'ceils to 2 decimal places' do
    8.881.ceil_to(2).must_equal 8.89
  end

  # 8.88  * 100 = 888.000000001
  #  (888.0000001).ceil.to_f / 100
  #  => 8.89
  #    - floats cause grown men to cry
  #
  it 'ceils to 2 decimal places' do
    8.88.ceil_to(2).must_equal 8.89
  end
end
