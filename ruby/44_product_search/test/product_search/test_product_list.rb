require 'test_helper'
require_relative '../../lib/product_search/product_list'

describe ProductList do
  describe '#[]' do
    it 'returns a product if present' do
      product_list = ProductList.new
      product_list.add(product: Product.new(name: 'Widget', price: 5, quantity: 2))

      product_list['widget'].must_equal Product.new(name: 'Widget', price: -1, quantity: -1)
    end

    it 'returns default value if absent' do
      product_list = ProductList.new
      product_list.add(product: Product.new(name: 'Widget', price: 5, quantity: 2))

      product_list['missing'].must_be_nil
    end
  end

  describe '#add' do
    it 'will add a product to the list' do
      product_list = ProductList.new

      product_list.products.count.must_equal 0
      product_list.add(product: Product.new(name: 'widget', price: 0, quantity: 0))
      product_list.products.count.must_equal 1
      product_list.products.key? 'widget'
    end

    it 'will index the product name as lowercase' do
      product_list = ProductList.new
      product_list.add(product: Product.new(name: 'Widget', price: 0, quantity: 0))

      product_list.products.key?('Widget').must_equal false
    end
  end

  describe '#in_stock?' do
    it 'returns true if present' do
      product_list = ProductList.new
      product_list.add(product: Product.new(name: 'Widget', price: 0, quantity: 0))

      product_list.in_stock?('widget').must_equal true
    end

    it 'returns false if absent' do
      product_list = ProductList.new
      product_list.add(product: Product.new(name: 'arbitary', price: 0, quantity: 0))

      product_list.in_stock?('missing').must_equal false
    end
  end

  it '#to_json - outputs json' do
    products = ProductList.new
    products.add product: Product.new(name: 'item1', price: 1, quantity: 1)
    products.add product: Product.new(name: 'item2', price: 2, quantity: 2)

    products.to_json.must_equal %({"products":[{"name":"item1","price":1,"quantity":1},) +
      %({"name":"item2","price":2,"quantity":2}]})
  end
end
