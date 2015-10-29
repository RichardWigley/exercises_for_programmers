require 'json'

class Product
  attr_reader :name, :price, :quantity
  def initialize(name:, price:, quantity:)
    @name = name
    @price = price
    @quantity = quantity
  end

  def key
    name.downcase
  end

  def ==(other)
    other.class == self.class && other.name == name
  end

  def to_hash
    { 'name' => name, 'price' => price, 'quantity' => quantity }
  end

  def to_json(*)
    to_hash.to_json
  end
end
