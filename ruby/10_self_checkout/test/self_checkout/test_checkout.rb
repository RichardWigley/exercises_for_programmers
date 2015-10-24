require 'test_helper'
require_relative '../../lib/self_checkout/checkout'

module SelfCheckout
  describe Checkout do
    describe '#add' do
      it 'defaults to nothing' do
        checkout = Checkout.new
        checkout.subtotal.must_equal 0
      end

      it 'adds' do
        checkout = Checkout.new
        checkout.add price: 10, quantity: 5
        checkout.subtotal.must_equal 50
      end

      it 'handles smoke test' do
        checkout = Checkout.new
        checkout.add price: 1, quantity: 5
        checkout.add price: 5, quantity: 5
        checkout.add price: 2, quantity: 3
        checkout.subtotal.must_equal 36
      end
    end

    describe '#tax' do
      it 'does not crash if no subtotal' do
        checkout = Checkout.new
        checkout.tax.must_equal 0
      end

      it 'calculates the correct tax' do
        checkout = Checkout.new
        checkout.tax(100).must_equal 5.5
      end
    end

    describe '#total' do
      it 'totals to nothing by default' do
        Checkout.new.total.must_equal 0
      end

      it 'calculates the correct total' do
        Checkout.new.total(100).must_equal 105.5
      end
    end
  end
end
