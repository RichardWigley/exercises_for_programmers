require 'json'

class ProductList
  attr_reader :products
  def initialize
    @products = Hash.new {}
  end

  def in_stock?(product_name)
    products.key? product_name
  end

  def [](product_name)
    products[product_name]
  end

  def add(product:)
    @products[product.key] = product
  end

  def to_json(*)
    { 'products' => hashing_products_values }.to_json
  end

  private

  def hashing_products_values
    products.values.map(&:to_hash)
  end
end
