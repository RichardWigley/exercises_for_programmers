require 'dotenv'
require 'logger'
require_relative 'convert'
require_relative 'currency'
require_relative 'number'
require_relative 'rates'

logger = Logger.new($stderr)
logger.level = Logger::INFO

Dotenv.load

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

def output(units:, currency_name:, exchange_rate:, amount:)
  "#{format('%.0f', units)} #{currency_name}s at an exchange rate of #{exchange_rate} is #{amount} U.S. dollars."
end

puts 'Currency Conversion'
currency_code = nil
loop do
  currency_code = prompt('What currency are you converting from? Enter a 3 code reference:').upcase
  break if Currency.new.to_name?(currency_code)
  puts 'Must be a recognised currency code eg GBP or USD'
end
logger.debug "#{currency_code}"

units = nil
loop do
  units = prompt("How many #{Currency.new.to_name(currency_code)}s are you exchanging?")
  break if number? units
  puts 'Must be a number.'
end
logger.debug "units: #{units}"

units = units.to_f
report = Rates.new.report(rate_from: currency_code, rate_to: 'USD')
logger.debug "reports: from: #{report.from}, to: #{report.to}"

convert = Convert.new(from: report.from, to: report.to)

puts output units: units,
            currency_name: Currency.new.to_name(currency_code),
            exchange_rate: convert.exchange_rate,
            amount: convert.transfer_amount(units)
