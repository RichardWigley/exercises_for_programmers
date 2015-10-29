require 'test_helper'
require_relative '../../lib/product_search/product_display'

describe ProductDisplay do
  it 'displays a product' do
    product = Product.new(name: 'one', price: 1, quantity: 5)
    assert_output("Name: one\nPrice: $1.00\nQuantity on hand: 5\n") \
      { ProductDisplay.new(product).output }
  end
end
