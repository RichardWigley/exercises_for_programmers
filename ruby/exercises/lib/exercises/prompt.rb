require_relative 'clean_input'
require_relative 'refinements/string'
using Refinements::String


def prompt message, validation, coerce: :to_s
  prompt = CleanInput.new message, validation, type: coerce
  prompt.get_until
  prompt.input
end

def something_entered?
  [ ['You must enter a searchable phrase', ->(input) { input.empty? }] ]
end

def yes_no?
  [ ['Enter either Y or N', ->(input) { !%w(y n).include?(input.downcase)}] ]
end

# positif_number?
#  - this is non-negative
#    - french math, much needed, word for zero and positive number
#    - english does not have a simple word for non-negative
#
def positif_number?(item_name:)
  [
    ["You must enter a #{item_name}", ->(input) { input.empty? }],
    ["#{item_name} cannot be less than 0.", ->(input) { input.to_f < 0 }],
    ['Enter only a decimal number made of the digits e.g 0 - 9 and decimal point.', ->(input) { !input.float? }],
  ]
end

def whole_number?(item_name:)
  [
    ["You must enter a #{item_name}", ->(input) { input.empty? }],
    ["#{item_name} cannot be less than 0.", ->(input) { input.to_i < 0 }],
    ['Enter only a number made of the digits e.g 0 - 9.', ->(input) { !input.integer? }]
  ]
end

