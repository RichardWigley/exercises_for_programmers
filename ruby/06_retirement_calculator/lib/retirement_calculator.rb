require_relative 'calculator'

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

age = prompt 'What is your current age?'
retirement_age = prompt 'At what age would you like to retire?'

calculator = Calculator.new age: age.to_i, retirement_age: retirement_age.to_i
if calculator.working?
  puts "You have #{calculator.years_left} years left until you can retire."
  puts "It's #{calculator.year}, so you can retire in #{calculator.retire_in}."
else
  puts 'You have already retired.'
end
