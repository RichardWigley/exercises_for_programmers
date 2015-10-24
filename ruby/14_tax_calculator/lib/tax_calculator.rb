require_relative 'states'
require_relative 'tax'

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

def raw_state_code
  @raw_state_code ||= prompt('What is the state?').upcase
end

order_amount = prompt('What is the order amount?').to_f
state_code = raw_state_code
state_code = translate_to_state_code(raw_state_code) \
  if translate_to_state_code?(raw_state_code)

order_tax = Tax.new(amount: order_amount, state: state_code)

puts "#{"The tax is $ #{order_tax.tax}\n" if order_tax.tax?}" \
  "The total is $ #{format('%.2f', order_amount + order_tax.tax)}"
