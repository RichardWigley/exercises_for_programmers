#
# class Headers
#  - collection of headers - the top row of a table
#
class Headers
  attr_reader :headers
  def initialize(headers)
    @headers = headers
  end

  def render
    headers.each(&:render)
    puts
  end

  def formatting
    headers.map { |header| "%-#{header.width}s" }.join
  end

  def width
    headers.map(&:width).inject(:+)
  end
end
