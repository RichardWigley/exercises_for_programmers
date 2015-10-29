require 'test_helper'
require_relative '../../lib/product_search/product_store'

describe ProductStore do
  it 'reads in json' do
    product_list = ProductStore.new('arbitary').read(stream: products_string)
    product_list.products.count.must_equal 1
    product_list['item'].wont_be_nil
  end

  def products_string
    %({ "products" : [ {"name": "item", "price": 2, "quantity": 5 } ] })
  end

  it 'writes out example json' do
    product_list = ProductList.new
    product_list.add(product: Product.new(name: 'Widget', price: 0, quantity: 0))

    ProductStore.new('test/fixtures/example.json').write(example_json_products)
  end

  def example_json_products
    { 'products' => [{ 'name' => 'Widget', 'price' => 25.0, 'quantity' => 5 }] }
  end
end
