module PaintCalculator
  # Coverage
  #  - calculates the volume of paint required for an area
  #
  class Coverage
    ONE_GALLON_COVERS = 350.0
    attr_reader :area
    def initialize(area:)
      @area = area
    end

    # gallons
    #  - gallons of paint required for an area
    #  - returns the gallons of paint.
    def gallons
      (area / ONE_GALLON_COVERS).ceil
    end
  end
end
