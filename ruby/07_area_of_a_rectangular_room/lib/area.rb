class Area
  attr_reader :length, :width
  def initialize(length:, width:)
    @length = length
    @width = width
  end

  def square_feet
    length * width
  end
end
