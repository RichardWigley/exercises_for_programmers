require 'test_helper'
require 'rates'
require 'dotenv'
Dotenv.load

describe Rates do
  describe '#report' do
    it 'uses a cached value when available' do
      json = '{ "rates": { "AUD": 10.42234, "GBP": 0.058463 } }'
      rates = Rates.new(cache: { 'AUDGBP' => json })
      rates.report(rate_from: 'AUD', rate_to: 'GBP')
        .must_equal Rates::Report.new(1 / 10.42234, 1 / 0.058463)
    end

    it 'populates the cache with new values' do
      json = '{ "rates": { "AUD": 1.422342, "GBP": 0.658463 } }'
      expected_url = 'https://openexchangerates.org/api/latest.json?' \
        "app_id=#{ENV['API_OPENEXCHANGERATES_KEY']}"
      stub_request(:get, expected_url)
        .to_return(status: 200, body: json, headers: {})

      cache = {}
      rates = Rates.new(cache: cache)
      rates.report rate_from: 'AUD', rate_to: 'GBP'
      cache['AUDGBP'].must_equal json
    end
  end
end
