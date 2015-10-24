require 'test_helper'
require_relative '../../lib/pizza_party/pizza_divider'

module PizzaParty

  describe PizzaDivider do
    it 'calculates the slices per person' do
      pizza = PizzaDivider.new people: 2, pizzas: 2, slices: 2
      pizza.slices_per_person.must_equal 2
    end

    it 'calculates the remaining slices' do
      pizza = PizzaDivider.new people: 2, pizzas: 1, slices: 3
      pizza.remaining.must_equal 1
    end
  end
end
