require_relative '../exercises/clean_input'
require_relative '../refinements/string_refinements'
using StringRefinements

# Application module
# user_input
#  - for collection of user entered data
#
module Magic8Ball
  # integer_errors
  #   - arg input - user entered string
  #   returns nil if input allowed, error if not
  #
  def self.integer_errors(input)
    case
    when input == 'done' then return
    when input.empty? then 'Nothing was entered. Please enter a number.'
    when !input.integer? then 'Enter only a number made of the digits e.g 0 - 9 or done when you have finished.'
    end
  end

  # collect_input
  #  - loops until user input accepted.
  #
  def self.collect_input
    entries = []
    loop do
      (entry = CleanInput.new('Enter a number:', ->(input) { integer_errors input }))
        .get_until
      break if entry.input == 'done' # sigh switching on a string
      entries << entry.input.to_i
    end
    entries
  end
end
