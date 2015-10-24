#
# Story
#   adds input and outputs as story
#
class Story
  attr_reader :fill_ins

  def initialize(fill_ins = {})
    @fill_ins = fill_ins
  end

  def add(word_type:, value:)
    @fill_ins[word_type] = value
  end

  def output
    "Do you #{fill_ins['verb']} your #{fill_ins['adjective']} " \
      "#{fill_ins['noun']} #{fill_ins['adverb']}?\nThat's hilarious!"
  end
end
