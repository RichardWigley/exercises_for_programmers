require_relative 'char_count'

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

input = nil

loop do
  input = prompt 'What is the input string?'
  break unless input.empty?
  puts 'Please enter an input string.'
end

counter = CharCount.new input
puts "#{counter.input} has #{counter.length} characters."
