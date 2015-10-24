module PaintCalculator
  module Shape
    # Rectangle
    #  - calculates the area of a rectangle
    #
    class Rectangle
      attr_reader :length, :width
      def initialize(length:, width:)
        @length = length
        @width = width
      end

      def area
        length * width
      end
    end
  end
end
