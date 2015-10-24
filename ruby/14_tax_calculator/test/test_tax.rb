require 'test_helper'
require 'tax'

describe Tax do
  describe '#tax?' do
    it 'knows if tax should be applied' do
      Tax.new(amount: 10, state: 'WI').tax?.must_equal true
    end

    it 'knows if tax should not be applied' do
      Tax.new(amount: 10, state: 'UNTAXED_STATE').tax?.must_equal false
    end
  end

  describe '#tax' do
    it 'returns zero for a non taxed state' do
      Tax.new(amount: 10, state: 'UNTAXED_STATE').tax.must_equal 0
    end

    it 'returns non-zero for a taxed state' do
      Tax.new(amount: 10, state: 'WI').tax.must_equal 0.55
    end

    describe 'rounding' do
      it 'rounds tax upwards to the nearest cent' do
        Tax.new(amount: 10.000_000_1, state: 'WI').tax.must_equal 0.56
      end
    end
  end
end
