require 'test_helper'
require 'area'

describe Area do
  it 'outputs square feet' do
    area = Area.new length: 2, width: 3

    area.square_feet.must_equal 6
  end
end
