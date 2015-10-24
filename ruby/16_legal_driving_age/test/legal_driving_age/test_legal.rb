require 'test_helper'
require_relative '../../lib/legal_driving_age/legal'

describe Legal do
  it 'allows you to drive if obove age' do
    Legal.new(age: 16).legal?.must_equal true
  end

  it 'does not allow you to drive if below age' do
    Legal.new(age: 15).legal?.must_equal false
  end
end
