require_relative '../../../exercises/lib/exercises/clean_input'
require_relative '../../../exercises/lib/exercises/refinements/string'
using Refinements::String

# Application module
# user_input
#  - for collection of user entered data
#
module ComputingStatistics
  # collect_input
  #  - loops until user input accepted.
  #
  def self.collect_input
    entries = []
    loop do
      (entry = clean_input).get_until
      break if entry.input == 'done' # sigh switching on a string
      entries << entry.input.to_i
    end
    entries
  end


  # clean_input
  #   - arg input - user entered string
  #   returns nil if input allowed, error if not
  #
  def self.clean_input
    CleanInput.new('Enter a number:',
                   [
                     [:break, ->(input) { input == 'done' }],
                     ['Nothing was entered. Please enter a number.', ->(input) { input.empty? }],
                     ['Enter only a number made of the digits e.g 0 - 9 or done when you have finished.', ->(input) { !input.integer? }]
                   ])
  end
end
