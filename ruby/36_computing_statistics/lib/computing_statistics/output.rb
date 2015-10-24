require_relative '../exercises/maths'

# Application module
#  - program output
#
module ComputingStatistics
  # output
  #  - string to give user feedback
  #  - returns string to output
  #
  def self.output(numbers)
    "The average is #{Exercises::Maths.mean(numbers).round(2)}.\n" \
    "The minimum is #{Exercises::Maths.min(numbers).round(2)}.\n" \
    "The maximum is #{Exercises::Maths.max(numbers).round(2)}.\n" \
    "The standard deviation is #{Exercises::Maths.standard_deviation(numbers).round(2)}.\n"
  end
end
