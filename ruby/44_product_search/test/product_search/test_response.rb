require 'test_helper'
require_relative '../../lib/product_search/response'

describe Response do
  it '#downcase returns downcased input' do
    Response.new('CAPITALS').downcase.must_equal 'capitals'
  end

  describe '#exit?' do
    describe 'true' do
      it 'breaks when input requests the end' do
        Response.new('q').exit?.must_equal true
      end

      it 'breaks are case insensitive' do
        Response.new('Q').exit?.must_equal true
      end
    end

    it 'false - continues on other requests' do
      Response.new('x').exit?.must_equal false
    end
  end
end
