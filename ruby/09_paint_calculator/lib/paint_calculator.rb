require_relative 'paint_calculator/input'
require_relative 'paint_calculator/shape'
require_relative 'paint_calculator/coverage'

module PaintCalculator
  def self.main
    choices = input
    shape = create_shape(choices)
    puts output(gallons: Coverage.new(area: shape.area.ceil).gallons,
                square_feet: shape.area.ceil)
  end

  # create_shape
  #  - create a shape from user information
  #  - choices for the class to instantiate, shape, and the initialization, queries.
  #
  def self.create_shape(choices)
    Object.const_get("PaintCalculator::Shape::#{choices[:shape]}").new(choices[:queries])
  end

  def self.output(gallons:, square_feet:)
    "You will need to purchase #{gallons} of paint to cover" \
      " #{square_feet} square feet."
  end

  main
end
