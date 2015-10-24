require 'test_helper'
require 'story'

describe Story do
  it 'adds' do
    story = Story.new
    story.add word_type: 'word', value: 'something'
    story.fill_ins.length.must_equal 1
    story.fill_ins['word'].must_equal 'something'
  end

  it 'outputs' do
    story = Story.new 'noun' => 'dog',
                      'verb' => 'walk',
                      'adjective' => 'blue',
                      'adverb' => 'quickly'

    story.output.must_equal "Do you walk your blue dog quickly?\nThat's hilarious!"
  end
end
