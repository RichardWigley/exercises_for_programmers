require 'test_helper'
require_relative '../../lib/exercises/maths'

describe Exercises::Maths do
  describe '#min' do
    it 'returns minimum item' do
      Exercises::Maths.min([2, 3, 4]).must_equal 2
    end

    it 'returns nil if array empty' do
      Exercises::Maths.min([]).must_equal nil
    end

    it 'copes with one item array' do
      Exercises::Maths.min([2]).must_equal 2
    end
  end

  describe '#max' do
    it 'returns minimum item' do
      Exercises::Maths.max([2, 3, 4]).must_equal 4
    end

    it 'returns nil if array empty' do
      Exercises::Maths.max([]).must_equal nil
    end

    it 'copes with one item array' do
      Exercises::Maths.max([2]).must_equal 2
    end
  end

  describe '#sum' do
    it 'returns 0 if nothing to sum' do
      Exercises::Maths.sum([]).must_equal 0
    end

    it 'returns the sum of the collection' do
      Exercises::Maths.sum([3, 4, 7]).must_equal 14
    end
  end

  describe '#mean' do
    it 'errors when given an empty ' do
      Exercises::Maths.mean([]).nan?.must_equal true
    end

    it 'calculates the mean' do
      Exercises::Maths.mean([7, 8, 7, 8]).must_equal 7.5
    end
  end

  describe '#variance' do
    it 'calculates variance' do
      Exercises::Maths.unbiased_variance([3, 4]).must_equal 0.5
    end
  end

  describe '#standard_deviation' do
    it 'calculates standard deviation' do
      Exercises::Maths.standard_deviation([3, 4])
        .round(4).must_equal 0.7071
    end
  end
end
