module PaintCalculator
  module Shape
    # Circular
    #   - calculates the area of a circle
    #
    class Circular
      attr_reader :radius
      def initialize(radius:)
        @radius = radius
      end

      def area
        Math::PI * radius**2
      end
    end
  end
end
