require 'open-uri'
require 'json'

# Rates
#  - conversion rates between currencies
#
#
class Rates
  attr_reader :cache
  Report = Struct.new(:from, :to)

  def initialize(cache: {})
    @cache = cache
  end

  # report
  #  - returns rates for completing a currency conversion
  #     - caches response data
  #       - it has full response and could return an array of currencies
  #       - Caching Not implemented Properly
  #
  #  - returns report struct containing the rate_from and rate_to
  #    - currencies returned are converting from USD to another currency
  #      I required to convert from another currency to USD hence 1/rate
  #      see: https://www.mathsisfun.com/activity/currencies.html
  #  - the rate_to is always USD - which is always 1
  #
  def report(rate_from:, rate_to:)
    body = @cache.fetch(rate_from + rate_to) do
      @cache[rate_from + rate_to] = open(url).read
    end
    data = JSON.parse(body)
    Report.new(1 / data['rates'][rate_from], 1 / data['rates'][rate_to])
  end

  private

  def url
    key = ENV['API_OPENEXCHANGERATES_KEY']
    fail 'App key missing' unless key
    "https://openexchangerates.org/api/latest.json?app_id=#{key}"
  end
end
