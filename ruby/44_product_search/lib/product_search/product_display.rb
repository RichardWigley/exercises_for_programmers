class ProductDisplay
  attr_reader :product
  def initialize(product)
    @product = product
  end

  def output
    puts "Name: #{product.name}\n" \
         "Price: $#{format('%.2f', product.price)}\n" \
         "Quantity on hand: #{product.quantity}\n"
  end
end
