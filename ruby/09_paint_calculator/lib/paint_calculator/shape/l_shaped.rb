module PaintCalculator
  module Shape
    # LShaped
    #  - calculates the area of a L-Shape (2 rectangles)
    #
    class LShaped
      attr_reader :length_1, :width_1, :length_2, :width_2
      def initialize(length_1:, width_1:, length_2:, width_2:)
        @length_1 = length_1
        @width_1 = width_1
        @length_2 = length_2
        @width_2 = width_2
      end

      def area
        (length_1 * width_1) + (length_2 * width_2)
      end
    end
  end
end
