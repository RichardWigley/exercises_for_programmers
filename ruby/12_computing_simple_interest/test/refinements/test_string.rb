require 'test_helper'
require_relative '../../lib/refinements/string_refinements'

describe StringRefinements do
  using StringRefinements
  #
  # integer? is a wrapper to a system function call
  # no point testing something ruby specs already tests
  #
  describe '#integer?' do
    it 'returns true for a integer' do
      '3'.integer?.must_equal true
    end

    it 'returns false for not an integer' do
      'x'.integer?.must_equal false
    end

    it 'returns false for a number with a decimal' do
      '.3'.integer?.must_equal false
    end
  end

  describe '#float?' do
    it 'returns true for a number with a decimal' do
      '3.0'.float?.must_equal true
    end

    it 'returns true for an integer' do
      '3'.float?.must_equal true
    end

    it 'returns false for not a number' do
      'x'.float?.must_equal false
    end
  end
end
