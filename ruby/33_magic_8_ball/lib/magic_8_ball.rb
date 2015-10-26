require_relative 'magic_8_ball/data'
require_relative '../../exercises/lib/exercises/clean_input'

entry = CleanInput.new("What's your question?", [['You must enter a question.', ->(input) { input.empty? } ]])

entry.get_until

puts answers.sample
