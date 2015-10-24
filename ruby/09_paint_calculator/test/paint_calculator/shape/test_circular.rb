require 'test_helper'
require_relative '../../../lib/paint_calculator/shape/circular'

module PaintCalculator
  module Shape
    describe Circular do
      it 'calculates area of circle' do
        Circular.new(radius: 10).area.round.must_equal 314
      end
    end
  end
end
