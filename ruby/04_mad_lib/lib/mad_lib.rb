require_relative 'story'

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

# TODO: make an array of items to prompt on
#
noun = prompt 'Enter a noun:'
verb = prompt 'Enter a verb:'
adjective = prompt 'Enter an adjective:'
adverb = prompt 'Enter an adverb:'

story = Story.new
story.add word_type: 'noun', value: noun
story.add word_type: 'verb', value: verb
story.add word_type: 'adjective', value: adjective
story.add word_type: 'adverb', value: adverb

puts story.output
