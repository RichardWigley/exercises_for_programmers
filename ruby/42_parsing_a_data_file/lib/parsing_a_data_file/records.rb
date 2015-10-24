require_relative 'record'

class Records
  attr_reader :rows

  def initialize(rows:)
    @rows = Array(rows)
  end

  def sum_max_widths
    [last_max_width, first_max_width, salary_max_width].inject(:+)
  end

  def last_max_width
    rows.map(&:last).max_by(&:length).length.to_i + 1
  end

  def first_max_width
    rows.map(&:first).max_by(&:length).length.to_i + 1
  end

  def salary_max_width
    rows.map(&:format_salary).max_by(&:length).length.to_i
  end
end
