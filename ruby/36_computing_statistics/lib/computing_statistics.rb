require_relative 'computing_statistics/user_input'
require_relative 'computing_statistics/output'

# ComputingStatistics
#  - application module
#
module ComputingStatistics
  numbers = collect_input
  puts output(numbers)
end
