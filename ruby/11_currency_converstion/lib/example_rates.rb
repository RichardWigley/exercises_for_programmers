require 'dotenv'
require_relative 'rates'

Dotenv.load

puts Rates.new.report rate_from: 'EUR', rate_to: 'USD'
