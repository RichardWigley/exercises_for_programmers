require_relative '../../exercises/lib/exercises/refinements/float'
require_relative '../../exercises/lib/exercises/refinements/string'
require_relative '../../exercises/lib/exercises/clean_input'
require_relative 'computing_simple_interest/calculate_simple_interest'
require_relative 'computing_simple_interest/investment'
using Refinements::String
using Refinements::Float

module ComputingSimpleInterest
  # main
  #  - outer loop for the investment program
  #
  def self.main
    input_principal, input_rate, input_years = input
    investment = convert_to_investment input_principal, input_rate, input_years
    display_investment investment
  end

  # input
  #  - the user information to act on
  #
  def self.input
    (principal = CleanInput.new('Enter the principal:', float_errors)).get_until
    (rate = CleanInput.new('Enter the rate of interest:', float_errors)).get_until
    (years = CleanInput.new('Enter the number of years:', integer_errors)).get_until
    [principal.input, rate.input, years.input]
  end

  def self.float_errors
     [
     ['Nothing was entered. Please enter a number.', ->(input) { input.empty? }],
     ['Enter only a number made of the digits e.g 0 - 9 and decimal point ".".', ->(input) { !input.float? }],
     ]
  end

  def self.integer_errors
     [
     ['Nothing was entered. Please enter a number.', ->(input) { input.empty? }],
     ['Enter only a number made of the digits e.g 0 - 9.', ->(input) { !input.integer? }],
     ]
  end

  # convert_to_investment
  #  - wrapper to create investment structure
  #
  def self.convert_to_investment principal, rate, years
    Investment.new(principal.to_f, rate.to_f, years.to_i)
  end

  # display_investment
  #  - output the final information
  #
  def self.display_investment investment
    1.upto(investment.years) do |year|
      puts formatting(rate: investment.rate,
                      years: year,
                      investment_worth: calculate_simple_interest(principal: investment.principal,
                                                                  rate: investment.percent_rate,
                                                                  years: year).ceil_to(2))
    end
  end

  def self.formatting(rate:, years:, investment_worth:)
    "After #{years} years at #{rate}%, the investment will be worth $#{format '%.2f', investment_worth}"
  end

  main
end
