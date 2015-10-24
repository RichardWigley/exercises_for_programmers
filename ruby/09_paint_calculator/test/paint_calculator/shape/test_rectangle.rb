require 'test_helper'
require_relative '../../../lib/paint_calculator/shape/rectangle'

module PaintCalculator
  module Shape
    describe Rectangle do
      it 'calculates the area' do
        Rectangle.new(length: 4, width: 3).area.must_equal 12
      end
    end
  end
end
