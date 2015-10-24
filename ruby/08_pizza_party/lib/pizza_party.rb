require_relative '../../exercises/lib/exercises/clean_input'
require_relative '../../exercises/lib/exercises/refinements/string'
using Refinements::String
require_relative 'pizza_party/pizza_divider'
require_relative 'pizza_party/pluralize'

module PizzaParty
  Questioning = Struct.new(:question, :answer)

  def self.main
    queries = create_queries
    replied_queries = reply_to_queries(queries)
    pizza_divider = pizza_dividing(replied_queries)
    display_pizza_division pizza_divider
  end

  def self.create_queries
    queries = {}
    queries['people'] = Questioning.new('How many people?', nil)
    queries['pizzas'] = Questioning.new('How many pizzas do you have?', nil)
    queries['slices'] = Questioning.new('How many slices per pizza do you want?', nil)
    queries
  end

  def self.reply_to_queries(queries)
    queries.each do |_query, questioning|
      (response = CleanInput.new(questioning.question, validation)).get_until
      questioning.answer = response.input
    end
  end

  def self.validation
    [
      ['Nothing was entered. Please enter a number.', ->(input) { input.empty? }],
      ['Enter only a number made of the digits e.g 0 - 9.', ->(input) { !input.integer? }]
    ]
  end

  def self.pizza_dividing(queries)
    PizzaDivider.new people: queries['people'].answer.to_i,
                     pizzas: queries['pizzas'].answer.to_i,
                     slices: queries['slices'].answer.to_i
  end

  def self.display_pizza_division(pizza_division)
    puts
    puts "#{pluralize(pizza_division.people, 'person', plural: 'people')} with #{pluralize(pizza_division.pizzas, 'pizza')}"
    puts "Each person gets #{pluralize(pizza_division.slices_per_person, 'piece')} of pizza."
    puts "There are #{pizza_division.remaining} leftover pieces."
  end

  main
end
