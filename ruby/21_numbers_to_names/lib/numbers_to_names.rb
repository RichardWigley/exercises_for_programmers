require_relative 'numbers_to_names/month'
require_relative 'numbers_to_names/language'
require_relative '../../exercises/lib/exercises/prompt'
require_relative '../../exercises/lib/exercises/refinements/string'
using Refinements::String

module NumbersToNames

  def self.main
    language = prompt('What language? (E)nglish (S)panish:',
                      include?(%w(E S)),
                      coerce: :upcase)
    month_id = prompt('Please enter the number of the month:',
                      ranged_number?(item_name: 'month'),
                      coerce: :to_i)
    month = month_name(month_id, language: language_code(language))
    puts "The name of the month is #{month}."
  end

  def self.include?(items)
    [ ["Please enter one of: #{items.join(' , ')}", ->(input) { !items.include?(input.upcase)}] ]
  end

  def self.ranged_number?(item_name:)
    [
      ["You must enter a #{item_name}", ->(input) { input.empty? }],
      ['Enter only a number made of the digits e.g 0 - 9.', ->(input) { !input.integer? }],
      ["#{item_name} must be between 1 and 12.", ->(input) { input.to_i < 1 || input.to_i > 12 }],
    ]
  end

  main
end
