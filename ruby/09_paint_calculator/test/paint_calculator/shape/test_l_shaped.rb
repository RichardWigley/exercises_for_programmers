require 'test_helper'
require_relative '../../../lib/paint_calculator/shape/l_shaped'

module PaintCalculator
  module Shape
    describe LShaped do
      it 'calculates area' do
        LShaped.new(length_1: 2, width_1: 2, length_2: 3, width_2: 3).area
          .must_equal 13
      end
    end
  end
end
