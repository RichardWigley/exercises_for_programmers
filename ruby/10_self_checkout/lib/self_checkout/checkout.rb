module SelfCheckout
  # Checkout
  #  - process the line items and total them all
  #
  class Checkout
    attr_reader :subtotal
    TAX_RATE = 5.5
    def initialize
      @subtotal = 0
    end

    def add(price:, quantity:)
      @subtotal += (price * quantity)
    end

    def tax(taxable_total = subtotal)
      (taxable_total * TAX_RATE).round / 100.0
    end

    def total(totaled = subtotal)
      totaled + tax(totaled)
    end
  end
end
