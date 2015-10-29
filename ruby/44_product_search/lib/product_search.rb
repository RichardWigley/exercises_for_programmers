require_relative 'product_search/product_store'
require_relative 'product_search/product'
require_relative 'product_search/product_display'
require_relative 'product_search/response'
require_relative '../../exercises/lib/exercises/prompt'

def main
  puts 'Product Searcher (Enter Q to quit)'
  product_store = ProductStore.new(data_file)
  product_list = product_store.read
  product_list = event_loop product_list
  product_store.write product_list
end

def data_file
  'data/products.json'
end

def event_loop(product_list)
  loop do
    response = Response.new prompt('What is the product name?',
                                   something_entered?)
    break if response.exit?
    product_list = handle_action list: product_list, response: response
  end
  product_list
end

def handle_action(list:, response:)
  if list.in_stock? response.downcase
    ProductDisplay.new(list[response.downcase]).output
  else
    puts 'Sorry, that product was not found in our inventory'
    can_add = Response.new prompt('Do you want to add this product?',
                                  yes_no?)
    list.add(product: create_product(response.input)) if can_add.yes?
  end
  list
end

def create_product(name)
  Product.new name: name,
              price: prompt('what is the price of the product?',
                            positif_number?(item_name: 'price')),
              quantity: prompt('What is the quantity of the product?',
                               whole_number?(item_name: 'quantity'))
end

main
