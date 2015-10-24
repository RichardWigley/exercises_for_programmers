#
# class Separator
#   - table row between header and the rows
#
class Separator
  attr_reader :width
  def initialize(width)
    @width = width
  end

  def render
    puts '-' * width
  end
end
