#
# AsciiTable
#  - represents an ascii table
#    - very boring just wraps the table for output
#      does nothing clever
#
class AsciiTable
  attr_reader :headers, :separator, :rows
  def initialize(headers: Headers.new([]), separator: NoSeparator.new, rows:)
    @headers = headers
    @separator = separator
    @rows = rows
  end

  def render
    headers.render
    separator.render
    rows.each { |row| render_row(headers, row) }
  end

  private

  def render_row(headers, row)
    printf "#{headers.formatting}\n", *row
  end
end

