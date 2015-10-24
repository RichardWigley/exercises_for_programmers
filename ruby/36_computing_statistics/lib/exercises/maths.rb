
module Exercises
  # Maths
  #  - adding standard math functions
  #
  module Maths
    def self.min(collection)
      # re-implementing without using the 'min' function
      min = collection.first
      collection.drop(1).each { |item| min = item if min > item }
      min
    end

    def self.max(collection)
      # re-implementing without using the 'min' function
      min = collection.first
      collection.each { |item| min = item if min < item }
      min
    end

    def self.sum(collection)
      collection.inject(0) { |a, e| a + e }
    end

    def self.mean(collection)
      sum(collection) / collection.length.to_f
    end

    def self.unbiased_variance(collection)
      average = mean(collection)
      sum_of_squares = collection.inject(0) { |a, e| a + (e - average)**2 }
      sum_of_squares / (collection.length - 1).to_f
    end

    def self.standard_deviation(collection)
      variance = unbiased_variance(collection)
      Math.sqrt(variance)
    end
  end
end
