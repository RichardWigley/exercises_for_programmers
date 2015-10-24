require_relative '../../../exercises/lib/exercises/clean_input'
require_relative '../../../exercises/lib/exercises/refinements/string'
using Refinements::String

module PaintCalculator
  # input
  #  - collect user input required for the program to run
  #  - returns hash of shape: and the queries/responses required for calculation
  #    Example
  #      { shape: 'Rectangle', queries: { length: 10, width: 8 } }
  #
  def self.input
    shape_code = prompt_choice('Choose ceiling shape (R)ectangle, (C)ircular and (L)-shaped.')
    shape = map_code_to_shape(shape_code)
    queries = queries_to_ask(shape)
    { shape: shape, queries: ask_questions(queries) }
  end

  # choice_prompt
  #   - ask a user for a choice
  #     return a choice 'R' / 'C' / 'L'.
  #
  def self.prompt_choice(user_message)
    (choice = CleanInput.new(user_message,
                             [['Enter only one of these letters: R, C, L',
                               ->(input) { !%w(R C L).include?(input.upcase) }]]))
      .get_until
    choice.input.upcase
  end

  # map_code_to_shape
  #  - changes a letter into a shape
  #
  def self.map_code_to_shape(shape_code)
    { 'R' => 'Rectangle', 'C' => 'Circular', 'L' => 'LShaped' }
      .fetch(shape_code)
  end

  def self.queries_to_ask(shape)
    { 'Rectangle' => %w(length width), 'Circular' => ['radius'], 'LShaped' => %w(length_1 width_1 length_2 width_2) }
      .fetch(shape)
  end

  # ask_questions
  #   - prompts for questions and assigns the response.
  #     Returns questions mapped to their answers
  # Args
  #   questions - Example: length width
  #   returns {length: 8, width: 9}
  #
  def self.ask_questions(questions)
    queries = {}
    questions.each do |question|
      (response = CleanInput.new("What is the #{question.tr('_', ' ')}?", float_errors)).get_until
      queries[question] = response.input
    end
    queries.map { |question, response| [question.to_sym, response.to_i] }.to_h
  end

  def self.float_errors
    [
      ['Nothing was entered. Please enter a number.', ->(input) { input.empty? }],
      ['Enter only a number made of the digits e.g 0 - 9 and decimal point ".".', ->(input) { !input.float? }]
    ]
  end
end
