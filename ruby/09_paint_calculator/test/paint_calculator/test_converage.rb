require_relative '../test_helper'
require_relative '../../lib/paint_calculator/coverage'

module PaintCalculator
  describe Coverage do
    it 'above zero is rounded up' do
      Coverage.new(area: 0.1).gallons.must_equal 1
    end

    it 'on gallons limit is not rounded up' do
      Coverage.new(area: 350).gallons.must_equal 1
    end
  end
end
