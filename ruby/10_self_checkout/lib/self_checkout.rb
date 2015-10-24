require_relative 'self_checkout/line_item'
require_relative 'self_checkout/checkout'
require_relative '../../exercises/lib/exercises/prompt'

module SelfCheckout
  # main
  #  - main loop
  def self.main
    inputs = user_input
    checkout = process_checkout inputs
    display checkout
  end

  # user_input
  #  - returning user inputs
  #    returns an array of LineItems corresponding to user input
  #
  def self.user_input
    inputs = []
    1.upto(Float::INFINITY) do |i|
      price = prompt "Enter the price of item #{i}:", positif_number?(item_name: 'item'), coerce: :to_f
      quantity = prompt "Enter the quantity of items #{i}:", whole_number?(item_name: 'item'), coerce: :to_i
      inputs << LineItem.new(price, quantity)
      break if prompt('More items? (Y)es or (N)o', yes_no?, coerce: :downcase) == 'n'
    end
    inputs
  end

  # process_checkout
  #  - perform checkout operation on the user information
  #
  def self.process_checkout(inputs)
    checkout = Checkout.new
    inputs
      .each { |input| checkout.add(price: input.price, quantity: input.quantity) }
    checkout
  end

  # display
  #  - output the checkout inventory total
  #
  def self.display(checkout)
    puts "Subtotal: $ #{format('%.2f', checkout.subtotal)}"
    puts "Tax: $ #{format('%.2f', checkout.tax)}"
    puts "Total: $ #{format('%.2f', checkout.total)}"
  end

  main
end
