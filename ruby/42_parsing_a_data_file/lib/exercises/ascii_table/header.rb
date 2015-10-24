#
# Header
#   - representing a table header
#
class Header
  attr_reader :title, :width
  def initialize(title, width: 0)
    @title = title
    @width = width
  end

  def render
    printf("%-#{width}s", title)
  end
end
