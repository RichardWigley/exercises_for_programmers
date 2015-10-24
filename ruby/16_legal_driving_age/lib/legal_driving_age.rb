require_relative '../../exercises/lib/exercises/refinements/string'
require_relative '../../exercises/lib/exercises/clean_input'
require_relative 'legal_driving_age/legal'
using Refinements::String

def main
  (response = clean_input).get_until
  age = response.input.to_i
  Legal.new(age: age).legal? ? output_legal : output_illegal
end

  # clean_input
  #   - arg input - user entered string
  #   returns nil if input allowed, error if not
  #
  def self.clean_input
    CleanInput.new('What is your age?',
                   [
                     ['Nothing was entered. Please enter a number.', ->(input) { input.empty? }],
                     ['Enter only a number made of the digits e.g 0 - 9.', ->(input) { !input.integer? }],
                     ['Age cannot be less than 0.', ->(input) { input.to_i < 0 }]
                   ])
  end

def output_legal
  puts 'You are old enough to legally drive'
end

def output_illegal
  puts 'You are not old enough to legally drive'
end

main
