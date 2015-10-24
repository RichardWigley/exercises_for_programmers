require 'test_helper'
require 'states'

describe 'states' do
  describe 'translate_to_state_code' do
    it 'converts state name to state code' do
      translate_to_state_code('MINISOTA').must_equal 'MN'
    end

    it 'converts to nil when there is no match' do
      translate_to_state_code('MISSING_HASH').must_equal :no_translation
    end
  end

  describe 'translate_to_state_code?' do
    it 'returns truthy when state name recognized' do
      translate_to_state_code?('MINISOTA').must_equal 'MN'
    end

    it 'returns falsey when state name mismatched' do
      translate_to_state_code?('ARBITARY').must_equal nil
    end
  end
end
