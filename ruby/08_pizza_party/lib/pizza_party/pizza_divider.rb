module PizzaParty
  # PizzaDivider
  #  - calculate the number of slices per person and remainder
  #
  class PizzaDivider
    attr_reader :people, :pizzas, :slices
    def initialize(people:, pizzas:, slices:)
      @people = people
      @pizzas = pizzas
      @slices = slices
    end

    def slices_per_person
      (pizzas * slices) / people
    end

    def remaining
      (pizzas * slices) % people
    end
  end
end
