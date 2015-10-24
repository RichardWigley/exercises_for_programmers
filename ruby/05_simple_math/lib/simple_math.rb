require_relative 'calculator'
require_relative 'number'

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

def validation_message_for_answer(str)
  case
  when str.nil? then 'Input a number please!'
  when !number?(str) then 'Input is not a number, please enter a number.'
  when str.to_i < 0 then 'Number cannot be negative!'
  end
end

numbers = { 'first' => nil, 'second' => nil }
numbers.each do |position, _value|
  loop do
    numbers[position] = prompt "What is the #{position} number?"
    validation = validation_message_for_answer numbers[position]
    break if validation.nil?
    puts validation
  end
end

calculator = Calculator.new first: numbers['first'].to_i,
                            second: numbers['second'].to_i

puts calculator.add
puts calculator.subtract
puts calculator.multiply
puts calculator.divide

