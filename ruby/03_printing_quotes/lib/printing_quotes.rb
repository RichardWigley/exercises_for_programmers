require_relative 'quoter'

puts 'What is the quote?'
quote = gets.chomp
puts 'Who said it?'
actor = gets.chomp

quoter = Quoter.new actor: actor, quote: quote
puts quoter.to_s
