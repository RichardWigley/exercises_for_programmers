require 'test_helper'
require_relative '../../lib/product_search/product'

describe Product do
  describe '#key' do
    it 'returns lowercase unchanged' do
      Product.new(name: 'lower', price: 0, quantity: 0).key.must_equal 'lower'
    end

    it 'returns uppercase transformed to lower' do
      Product.new(name: 'LOWER', price: 0, quantity: 0).key.must_equal 'lower'
    end
  end
  describe '#==' do
    it 'matches if a name is the same' do
      Product.new(name: 'my_product', price: 15, quantity: 4)
        .must_equal Product.new(name: 'my_product', price: 0, quantity: 0)
    end

    it 'mismatches if a name is different' do
      Product.new(name: 'my_product', price: 15, quantity: 4)
        .wont_equal Product.new(name: 'different', price: 0, quantity: 0)
    end
  end

  it '#to_hash - converts to json' do
    Product.new(name: 'test', price: 15, quantity: 4).to_hash
      .must_equal('name' => 'test', 'price' => 15, 'quantity' => 4)
  end

  it '#to_json - converts to json' do
    Product.new(name: 'test', price: 15, quantity: 4).to_json
      .must_equal %({"name":"test","price":15,"quantity":4})
  end
end
