require 'test_helper'
require_relative '../../lib/exercises/clean_input'

describe CleanInput do
  it 'returns input if no errors' do
    $stdin = StringIO.new('allowed text input')
    clean = CleanInput.new('', [['Error if no text', ->(input) { input.empty? }]])
    clean.get

    clean.input.must_match 'allowed text input'

    $stdin = STDIN
  end

  describe '#input - conversion' do
    it 'returns a string by default' do
      $stdin = StringIO.new('input')
      clean = CleanInput.new('', [])
      clean.get

      clean.input.must_equal 'input'

      $stdin = STDIN
    end

    it 'can return an integer' do
      $stdin = StringIO.new('5')
      clean = CleanInput.new('', [], type: :to_i)
      clean.get

      clean.input.must_equal 5

      $stdin = STDIN
    end

    it 'can return a float' do
      $stdin = StringIO.new('5.5')
      clean = CleanInput.new('', [], type: :to_f)
      clean.get

      clean.input.must_equal 5.5

      $stdin = STDIN
    end
  end

  describe '#get' do
    it 'returns nil if no errors' do
      $stdin = StringIO.new('allowed text input')
      clean = CleanInput.new('', [['Error if no text', ->(input) { input.empty? }]])

      clean.get.must_equal nil

      $stdin = STDIN
    end

    it 'returns error if fails' do
      $stdin = StringIO.new("\n")
      clean = CleanInput.new('', [['Error if no text.', ->(input) { input.empty? }]])
      clean.get.must_equal 'Error if no text.'

      $stdin = STDIN
    end
  end

  describe '#response?' do
    it 'has a response when something read' do
      $stdin = StringIO.new('allowed text input')
      clean = CleanInput.new('', [['Error if no text', ->(input) { input.empty? }]])
      clean.get

      clean.response?.must_equal true

      $stdin = STDIN
    end

    it 'has no response when error' do
      $stdin = StringIO.new("\n")
      clean = CleanInput.new('', [[:finished, ->(input) { input.empty? }]])
      clean.get

      clean.response?.must_equal false

      $stdin = STDIN
    end
  end

  describe 'exiting loop' do
    it '#get - returns nil if exiting' do
      $stdin = StringIO.new('done')
      clean = CleanInput.new('', [[nil, ->(input) { input == 'done' }]])

      clean.get.must_equal nil

      $stdin = STDIN
    end

    it '#get_until - breaks on quit phrase' do
      $stdin = StringIO.new('done')
      clean = CleanInput.new('', [[:break, ->(input) { input == 'done' }],
                                  ['errors', ->(input) { input != 'done' }]
                                 ])
      clean.get_until.must_equal nil
      clean.input.must_equal 'done'

      $stdin = STDIN
    end

    it '#response? - has a response when exiting' do
      $stdin = StringIO.new('done')
      clean = CleanInput.new('', [[nil, ->(input) { input.empty? }]])
      clean.get

      clean.input.must_equal 'done'

      $stdin = STDIN
    end
  end
end
