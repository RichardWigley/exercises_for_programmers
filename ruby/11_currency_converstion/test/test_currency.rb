require 'test_helper'
require 'currency'

describe Currency do
  describe '#to_name?' do
    it 'returns false when a currency code cannot be found' do
      Currency.new.to_name?('ARB').must_equal false
    end

    it 'returns true when a currency code can be found' do
      Currency.new.to_name?('USD').must_equal true
    end
  end

  describe '#to_name' do
    it 'gets missing_currency when unknown currency' do
      Currency.new.to_name('ARB').must_equal :missing_currency
    end

    it 'gets the currency name from the currency code' do
      Currency.new.to_name('USD').must_equal 'US Dollar'
    end
  end
end
