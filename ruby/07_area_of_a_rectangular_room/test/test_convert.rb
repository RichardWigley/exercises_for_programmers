require 'test_helper'
require 'convert'

describe Convert do
  it 'converts meters to feet' do
    Convert.meters_to_feet(1).must_equal 3.280_839_9
  end

  it 'converts square feet to square meters' do
    Convert.square_feet_to_square_meters(300).must_equal 27.870912
  end
end
